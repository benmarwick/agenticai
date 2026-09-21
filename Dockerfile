# Use Rocker's RStudio image as the base
FROM rocker/verse:4.6.1

# Install Quarto and system dependencies for R packages
# This layer is stable; cached until apt deps or Quarto version changes
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    gdebi-core \
    libglpk-dev \
    libabsl-dev \
    cmake \
    default-jdk \
    libmagick++-dev \
    && curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.450/quarto-1.3.450-linux-amd64.deb \
    && gdebi --non-interactive quarto-1.3.450-linux-amd64.deb \
    && rm quarto-1.3.450-linux-amd64.deb \
    && rm -rf /var/lib/apt/lists/*

# --- RSTUDIO PROJECT AUTO-LOAD CONFIG ---
RUN mkdir -p /home/rstudio/.local/share/rstudio/projects_settings && \
    echo "/project/agentic-ai-for-archaeology.Rproj" > /home/rstudio/.local/share/rstudio/projects_settings/last-project-path && \
    mkdir -p /home/rstudio/.config/rstudio && \
    echo '{"initial_working_directory": "/project"}' > /home/rstudio/.config/rstudio/rstudio-prefs.json && \
    chown -R rstudio:rstudio /home/rstudio/.local /home/rstudio/.config

# --- TERMINAL CONFIG ---
RUN echo 'cd /project' >> /home/rstudio/.bashrc && \
    echo "source /opt/conda/etc/profile.d/conda.sh" >> /home/rstudio/.bashrc

# ---  RENV RESTORE (cache-optimized) ---
# Copy only dependency manifests first so renv layer is cached
# until renv.lock / .Rprofile / renv/activate.R changes
WORKDIR /project
COPY renv.lock renv.lock
COPY renv/activate.R renv/activate.R
COPY .Rprofile .Rprofile

ENV RENV_PATHS_LIBRARY=/opt/renv/library
ENV RENV_PATHS_CACHE=/opt/renv/cache
RUN mkdir -p /opt/renv && chown -R rstudio:rstudio /opt/renv

# Install renv and restore packages - most expensive layer, now cached
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org')" && \
    R -e "options(renv.config.cache.symlinks = FALSE); renv::restore(prompt = FALSE)"

# Copy remaining project files (cheap, invalidates only on source edits)
COPY . /project
RUN chown -R rstudio:rstudio /project
