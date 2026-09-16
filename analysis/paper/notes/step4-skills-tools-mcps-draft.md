# Draft: replacement for Step 4 in analysis/paper/paper.qmd

STATUS: draft for review, revised 2026-09-16 with examples specific to social
science and archaeological research. Citations use bibtex keys only. All six new
bibliographic sources verified against Crossref on 2026-09-16. `paper.qmd`
is claimed by another session (ses_f5ac0ef64ffehpFdXNOze5kbAS); this file is
scratch notes and will be integrated into paper.qmd after the claim is released
and the user approves.

New bib keys required (to add to analysis/paper/references.bib with a claim):
Anthropic2024, Anthropic2025Skills, Hou2025, Xu2026, Routsis2026, Pavlidis2025,
QiWen2025, Bellat2025, MasurScharkow2020, SarmaKay2021. Entries listed below.

---

## Proposed section text

# Step 4: Use Skills, Tools, and MCP Servers

An agent harness gives the model a place to work. Skills, tools, and MCP
servers give it the working methods. A skill is a folder of instructions,
scripts, and resources that an agent loads when a task matches its description
(@Xu2026; @Anthropic2025Skills). Anthropic introduced the format in October
2025 and published it as an open standard in December 2025
(@Anthropic2025Skills). A tool is a function the agent can call, such as
running a web search or looking up a DOI. The Model Context Protocol (MCP) is
an open standard that connects agents to external data sources and tools
(@Anthropic2024; @Hou2025).

Skills encode the procedures a research team already trusts. A social-science
team might install a systematic-review skill that searches databases, screens
titles and abstracts, and extracts study characteristics, or a
multiverse-analysis skill that runs every defensible specification of a model
and summarises the distribution of results with the specr and multiverse
packages (@MasurScharkow2020; @SarmaKay2021). An archaeology team might
install a compendium skill that structures a project with Quarto, the here
package, and renv, so that any collaborator can reproduce the analysis from a
clean checkout (@Marwick2017). The agent reads a skill's instructions only
when it judges them relevant, so the skill adds expertise without crowding
the context window with every procedure at once (@Xu2026). OpenCode discovers
skills from a project's skills directory, and the compendium for this article
carries skills for deep research, academic paper writing, and peer review.

Most research tasks also need the agent to reach beyond the harness. An MCP
server is a small program that exposes data or tools to the agent through a
standard interface; the agent calls it the way it calls any built-in function
(@Hou2025). Reference-verification servers such as refcheck and
open-scholar-peer query Crossref, Semantic Scholar, and arXiv, and return
verified records with DOIs. The markitdown server converts the PDFs of
excavation reports and grey literature to plain text that the agent can read.
The ScholarMCP and academic-mcp servers retrieve paper metadata and full
texts, and the r-mcptools server gives the agent direct access to a running R
session, so it can execute analysis code and read the output without copying
files. These servers are connected to the compendium behind this article, and
each one checks its output against real sources before the text reaches the
bibliography. Agentic workflows are already appearing in disciplines close to
archaeology: agentic AI is used for data discovery in the social sciences and
humanities (@Routsis2026), for risk-aware digital twins of cultural heritage
assets (@Pavlidis2025), and the archaeology literature now reviews both LLMs
and machine learning pipelines for the discipline (@QiWen2025; @Bellat2025).

MCP servers expand what an agent can do, and they expand what can go wrong.
The protocol gives servers access to files, network calls, and code execution,
so the official specification makes consent and data privacy explicit: the
user must approve what data is shared and what actions tools take. Independent
research has catalogued MCP's security threats, including prompt injection and
tool poisoning, which often enter through untrusted content (@Hou2025). The
risk is manageable with three habits: run servers from sources you trust, give
each server the narrowest access your task needs, and review what a new server
can read or execute before you connect it.

Step 1: List the repetitive tasks in your workflow, such as searching the
literature, verifying references, or running sensitivity analyses. Step 2:
Find a skill that matches each task, or write a SKILL.md file that encodes your
own procedure. Step 3: Connect an MCP server for each external data source,
starting with a reference-verification server. Step 4: Test each new
capability on a known input, and check the output against an expected result
before you rely on it.

Skills, tools, and MCP servers move the unit of reuse from the prompt to the
packaged procedure. A prompt is private and typed once. A skill is a
documented, versioned, shareable method that any collaborator or future reader
can inspect. That is the property reproducible archaeology requires: the same
structured capability, applied the same way, every time (@Marwick2017;
@Booeshaghi2026).

---

## Bib entries to add to references.bib

@online{Anthropic2024,
  author = {{Anthropic}},
  title = {Introducing the {Model} {Context} {Protocol}},
  year = {2024},
  url = {https://www.anthropic.com/research/model-context-protocol},
  urldate = {2026-09-16}
}

@online{Anthropic2025Skills,
  author = {{Anthropic}},
  title = {Equipping {Agents} for the {Real} {World} with {Agent} {Skills}},
  year = {2025},
  url = {https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills},
  urldate = {2026-09-16}
}

@article{Hou2025,
  author = {Hou, Xin-Yi and Zhao, Yanjie and Wang, Shenao and Wang, Hao-Yu},
  title = {{Model} {Context} {Protocol} ({MCP}): {Landscape}, {Security} {Threats}, and {Future} {Research} {Directions}},
  journal = {ACM Transactions on Software Engineering and Methodology},
  year = {2025},
  doi = {10.1145/3796519},
  url = {https://doi.org/10.1145/3796519}
}

@misc{Xu2026,
  author = {Xu, Renjun and Yan, Yang},
  title = {Agent {Skills} for {Large} {Language} {Models}: {Architecture}, {Acquisition}, {Security}, and the {Path} {Forward}},
  year = {2026},
  url = {https://arxiv.org/abs/2602.12430},
  note = {arXiv:2602.12430},
  doi = {10.48550/arXiv.2602.12430}
}

@incollection{Routsis2026,
  author = {Routsis, Vassilis and Gan, Yujian and Uprety, Sagar and Bikakis, Antonis},
  title = {Agentic {AI} for {Data} {Discovery} in the {Social} {Sciences} and {Humanities}},
  booktitle = {AI and Smart Data for Cultural Heritage},
  publisher = {Routledge},
  year = {2026},
  pages = {36--57},
  doi = {10.4324/9781003666530-3},
  url = {https://doi.org/10.4324/9781003666530-3}
}

@article{Pavlidis2025,
  author = {Pavlidis, George},
  title = {Agentic {AI} for {Cultural} {Heritage:} {Embedding} {Risk} {Memory} in {Semantic} {Digital} {Twins}},
  journal = {Computers},
  year = {2025},
  volume = {14},
  number = {7},
  pages = {266},
  doi = {10.3390/computers14070266},
  url = {https://doi.org/10.3390/computers14070266}
}

@article{QiWen2025,
  author = {Qi, Xuekai and Wen, Rui},
  title = {Large {Language} and {Multimodal} {Models} in {Archaeological} {Science:} {A} {Review}},
  journal = {Electronics},
  year = {2025},
  volume = {14},
  number = {22},
  pages = {4507},
  doi = {10.3390/electronics14224507},
  url = {https://doi.org/10.3390/electronics14224507}
}

@article{Bellat2025,
  author = {Bellat, Mathias and Figueroa, Jordy Didier Orellana and Reeves, Jonathan Scott and Taghizadeh-Mehrjardi, Ruhollah and Tennie, Claudio and Scholten, Thomas},
  title = {Machine {Learning} {Applications} in {Archaeological} {Practices:} {A} {Review}},
  journal = {Journal of Computer Applications in Archaeology},
  year = {2025},
  volume = {8},
  number = {1},
  pages = {282--321},
  doi = {10.5334/jcaa.201},
  url = {https://doi.org/10.5334/jcaa.201}
}

@online{MasurScharkow2020,
  author = {Masur, Philipp K. and Scharkow, Michael},
  title = {specr: Conducting and {Visualizing} {Specification} {Curve} {Analyses}},
  year = {2020},
  url = {https://cran.r-project.org/package=specr},
  note = {R package},
  doi = {10.32614/cran.package.specr}
}

@online{SarmaKay2021,
  author = {Sarma, Abhraneel and Kay, Matthew},
  title = {multiverse: {Create} `multiverse analysis` in {R}},
  year = {2021},
  url = {https://cran.r-project.org/package=multiverse},
  note = {R package},
  doi = {10.32614/cran.package.multiverse}
}