# Garden of Forking Paths and Multiverse Analyses

**Date:** 2026-09-16 (updated: citations converted to manuscript-style @bibkey keys)
**Purpose:** draft text for the AAP how-to article on agentic AI for archaeological data analysis in R. In-text citations follow the manuscript convention in `paper.qmd`: `@bibkey` keys backed by entries in `analysis/paper/references.bib`.
**Status:** all citations verified against Crossref/Semantic Scholar or arXiv on 2026-09-16; see verification notes at the end.

---

## Draft (centered on the two 2026 studies; @bibkey citations)

The garden of forking paths describes the hidden multiplicity a researcher creates when choosing among many defensible ways to clean, transform, and model data (@GelmanLoken2016). A single published analysis cannot show how strongly its conclusions depend on those choices. Multiverse analysis answers this by running the full set of defensible variants and grading the reported result against the distribution of outcomes (@Steegen2016). Two 2026 studies show that agentic AI brings the forking paths into plain view, and with that, both new risk and new remedy. @Miao2026 gave 42 human research teams the same immigration dataset and showed that AI agents assigned different personas reproduced 72% of the ideological gap between teams in reported effect estimates. The opposing agent analyses looked credible: 86% passed an independent AI review and 78% passed majority human expert review. The authors conclude that the usual problem is not flawed analysis but selective exploration and reporting from a space of methodologically defensible options, and that AI agents can amplify the problem by making exploration cheap. Their remedy is the m-value, the probability that an analysis path would produce a claim at least as extreme as the reported one, estimated by Agentic Bootstrap, which uses agents to sample plausible analysis paths. Reading the p-value and m-value together places a result in one of four categories. A low p-value with a high m-value indicates a robust signal. A low p-value with a low m-value flags an analysis-fragile result that depends on which defensible path was chosen. A high p-value with a high m-value suggests no effect. A high p-value with a low m-value indicates inconsistency across the analysis space. Applied to the human study, 13.5% of reported analyses fell in the most extreme 5% of the analysis space (m < 0.05). @Bertran2026 built a comparable multiverse with LLM-based agents screened by an AI auditor across three domains, found divergent hypothesis-support verdicts from identical data, and showed that conclusions shift with model and prompt choices. They argue that reliable automated data science requires multiverse-style reporting and prompt disclosure alongside code and data. For archaeology, the practical step is to instruct an agent to sample the space of defensible analyses, compute m-values, and report the multiverse alongside any headline result. The agent removes the cost barrier that kept robustness testing out of most projects, while the researcher stays at the helm, defining which paths are defensible and interpreting the distribution.

---

## References with proposed .bib keys (APA 7.0, verified)

Bertran, M., Fogliato, R., & Wu, Z. S. (2026). Many AI analysts, one dataset: Navigating the agentic data science multiverse. *Proceedings of the National Academy of Sciences, 123*(29). https://doi.org/10.1073/pnas.2606495123 — key `Bertran2026` (already in references.bib)

Gelman, A., & Loken, E. (2016). The statistical crisis in science. In M. Pitici (Ed.), *The best writing on mathematics 2015* (pp. 305–318). Princeton University Press. https://doi.org/10.2307/j.ctvc778jw.30 — key `GelmanLoken2016` (needs adding to references.bib)

Miao, J., Pritchard, J. K., & Zou, J. (2026). *The agentic garden of forking paths* (arXiv:2607.01507). arXiv. https://doi.org/10.48550/arXiv.2607.01507 — key `Miao2026` (already in references.bib)

Steegen, S., Tuerlinckx, F., Gelman, A., & Vanpaemel, W. (2016). Increasing transparency through a multiverse analysis. *Perspectives on Psychological Science, 11*(5), 702–712. https://doi.org/10.1177/1745691616658637 — key `Steegen2016` (needs adding to references.bib)

Simonsohn, U., Simmons, J. P., & Nelson, L. D. (2020). Specification curve analysis. *Nature Human Behaviour, 4*(11), 1208–1214. https://doi.org/10.1038/s41562-020-0912-z — key `Simonsohn2020` (needs adding to references.bib)

Young, C., & Cumberworth, E. (2025). *Multiverse analysis: Computational methods for robust results*. Cambridge University Press. https://doi.org/10.1017/9781009003391 — key `YoungCumberworth2025` (needs adding to references.bib)

---

## Additional verified sources (not cited in the draft; proposed keys)

Masur, P. K., & Scharkow, M. (2020). *specr: Conducting and visualizing specification curve analyses* [R package]. https://doi.org/10.32614/cran.package.specr — key `MasurScharkow2020`

Sarma, A., & Kay, M. (2021). *multiverse: Create 'multiverse analysis' in R* [R package]. https://doi.org/10.32614/cran.package.multiverse — key `SarmaKay2021`

Voracek, M., Kossmeier, M., & Tran, U. S. (2019). Which data to meta-analyze, and how? *Zeitschrift für Psychologie, 227*(1), 64–82. https://doi.org/10.1027/2151-2604/a000357 — key `Voracek2019`

Dragicevic, P., Jansen, Y., Sarma, A., Kay, M., & Chevalier, F. (2019). Increasing the transparency of research papers with explorable multiverse analyses. In *Proceedings of the 2019 CHI Conference on Human Factors in Computing Systems* (pp. 1–15). ACM. https://doi.org/10.1145/3290605.3300295 — key `Dragicevic2019`

Hall, B. D., Liu, Y., Jansen, Y., Dragicevic, P., Chevalier, F., & Kay, M. (2022). A survey of tasks and visualizations in multiverse analysis reports. *Computer Graphics Forum, 41*(1), 402–426. https://doi.org/10.1111/cgf.14443 — key `Hall2022`

---

## Verification notes

- **Miao, Pritchard and Zou (2026)** is an arXiv preprint (arXiv:2607.01507v1, submitted 1 July 2026, cs.AI), not yet peer-reviewed as of 2026-09-16. The manuscript states it uses a CC BY 4.0 license. Numbers cited from the abstract: 42 human teams, 72% of ideological gap reproduced, 86% passed AI review, 78% passed human expert review, 13.5% of human analyses with m < 0.05. Flag the preprint status if quoted in the manuscript.
- **Bertran, Fogliato and Wu (2026)** is peer-reviewed in PNAS 123(29) (July 2026), DOI 10.1073/pnas.2606495123, PubMed 42446982, PMCID 13393493. Full abstract retrieved from Semantic Scholar; three domains studied; AI auditor screening; prompt disclosure recommended.
- The claim "agents remove the cost barrier" is now grounded in both papers rather than asserted: both studies describe cheap, scalable agent sampling of analysis paths as their enabling step.
- The m-value definition in the draft comes directly from the Miao et al. abstract: "the probability that an analysis path would produce a claim at least as extreme as the reported one."
- Earlier draft's assertion about the multiverse and specr R packages moved to "additional sources" so the new papers carry the weight; reintroduce the package sentence if the Methods section needs an R-specific hook.
- **Bibliography status:** of the six references cited in the draft, `Bertran2026` and `Miao2026` already have entries in `analysis/paper/references.bib`. The four keys `GelmanLoken2016`, `Steegen2016`, `Simonsohn2020`, and `YoungCumberworth2025` must be added to `references.bib` before the draft can be rendered in `paper.qmd`. Suggested keys avoid collisions with all existing keys in the file.