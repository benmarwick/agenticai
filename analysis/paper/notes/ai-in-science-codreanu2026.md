# Draft: citing Codreanu et al. 2026 ("AI in Science: Early Insights") in analysis/paper/paper.qmd

STATUS: draft for review, 2026-09-16. Source PDF read in full via
https://ai.google/static/documents/AI-in-Science.pdf. Citations use bibtex keys
only. No DOI exists (not in Crossref); cite by URL. This file is scratch notes
for later integration into paper.qmd.

New bib key required (to add to analysis/paper/references.bib with a claim):
Codreanu2026. Entry listed below.

---

## The paper

Codreanu, Imas, Mateos-Garcia et al., "AI in Science: Early Insights" (Google,
Google DeepMind, MIT FutureTech, September 2026). Three data sources: 15
million Gemini interactions (360,000 classified as science), an inventory of
2,690 specialized AI models, and a survey of 637 US/UK scientists
(July-August 2026).

## Key results (four findings)

1. **Broad adoption.** Scientists use AI more than most occupations (core
science occupations at 2.7x their employment share). Nearly half of surveyed
scientists use AI every day. Nearly half of papers introducing specialized
models land in the top 1% of citations in their fields.
2. **LLMs and specialized models complement each other.** LLMs handle code
troubleshooting, statistical analysis, literature review, and drafting;
specialized models do prediction, simulation, and classification. At fine task
granularity there is almost no overlap.
3. **Large reported productivity gains.** Average saving of just under 7 hours
per week, mostly reinvested in research. 8 in 10 report higher output over
three years; 68% report more cross-disciplinary insight.
4. **Bottlenecks shift downstream.** 41% report a growing backlog of untested
hypotheses. 89% of time-savers spend over a tenth of the saved time checking
AI outputs (46% spend over a quarter). 49% say AI pushes them toward safer
projects versus 28% toward riskier ones.

Details relevant to this manuscript: archaeology is named among the adopting
fields, and social sciences are the second-largest domain (21.4% of science
interactions). The paper also cites the "illusions of understanding" concern,
which matches the existing @Messeri2024 citation.

## Where to cite it

**1. Introduction, paragraph 1** (after the @Gattiglia2025 sentence on
publication counts). Draft: "Social sciences account for 21.4% of scientific
Gemini interactions, and archaeology appears among the adopting fields
(@Codreanu2026)."

**2. Step 2** ("The range of methods AI can propose is widening" paragraph).
Draft: "LLMs are used broadly for code troubleshooting, statistical analysis,
literature review, and drafting, while specialized models handle prediction and
simulation (@Codreanu2026)."

**3. Discussion, "Guidance for using AI responsibly" paragraph** (strongest
fit). Draft: "Large-scale industry telemetry now supplies the first direct
evidence on AI in science (@Codreanu2026). Across 15 million Gemini
interactions and a survey of 637 scientists, nearly half of researchers use AI
every day (@Codreanu2026). They report saving almost seven hours per week,
mostly reinvested in research (@Codreanu2026)."

**4. Discussion, over-reliance paragraph** (alongside @Moriguchi2026). Draft:
"Verification absorbs much of the dividend: 89% of those who save time spend
over a tenth of it checking AI outputs (@Codreanu2026). And 49% say AI pushes
them toward safer projects, against 28% who say it lets them take riskier ones
(@Codreanu2026)."

Caveat to carry into the manuscript: the authors state the survey is not
representative of all scientists and the model inventory is not exhaustive, so
attribute the numbers to the study ("they report") rather than the field at
large.

---

## Bib entry to add to references.bib

@online{Codreanu2026,
  author = {Codreanu, Mihai and Imas, Alex and Mateos-Garcia, Juan and Muiruri, Evalyne and Tri\v{s}ovi\'{c}, Ana and Strand, Scott and Turrell, Arthur and Chen, Yiyuan and Rock, Daniel and Jacobs, Julian and Rodchenko, Tanya and Iscenko, Zanna and Emmens, Joseph and Kasirzadeh, Atoosa and Pollard, Catherine and Curto Millet, Fabien and Thompson, Neil and Manyika, James},
  title = {{AI} in {Science:} {Early} {Insights}},
  year = {2026},
  url = {https://ai.google/static/documents/AI-in-Science.pdf},
  urldate = {2026-09-16}
}
