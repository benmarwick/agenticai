# Use Rocker's RStudio image as the base
FROM rocker/tidyverse:4.6.1

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
# All packages are installed into /opt/renv/library at build time.
# R_LIBS_USER is set so every R process finds the library without going
# through renv's autoloader (which re-bootstraps when it can't find itself).
# RENV_CONFIG_AUTOLOADER_ENABLED=FALSE suppresses the autoloader entirely
# so there is no re-download of renv at container start.

WORKDIR /project
COPY renv.lock renv.lock
COPY renv/activate.R renv/activate.R
COPY .Rprofile .Rprofile

ENV RENV_PATHS_LIBRARY=/opt/renv/library
ENV RENV_PATHS_CACHE=/opt/renv/cache
# Tell every R process where the library lives — bypasses renv autoloader logic
ENV R_LIBS_USER=/opt/renv/library
# Disable renv's autoloader so it does not re-bootstrap at container start
ENV RENV_CONFIG_AUTOLOADER_ENABLED=FALSE

RUN mkdir -p /opt/renv/library /opt/renv/cache && \
    chown -R rstudio:rstudio /opt/renv

# Install renv into the system library, then restore all project packages.
# Both steps run as root so the files land in /opt/renv/library (world-readable).
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org', lib='/usr/local/lib/R/library')" && \
    R -e "options(renv.config.cache.symlinks = FALSE); renv::restore(prompt = FALSE, library = '/opt/renv/library')" && \
    rm -rf /opt/renv/cache

# Copy remaining project files (cheap, invalidates only on source edits)
COPY . /project
RUN chown -R rstudio:rstudio /project
