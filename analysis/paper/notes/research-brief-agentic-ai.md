# Research Brief: Agentic AI in Academic Research and Data Analysis Workflows

**Mode:** quick, updated | **Date:** 2026-09-15 | **Prepared for:** how-to article in *Advances in Archaeological Practice* on using agentic AI for archaeological research with R

**Update note:** This file merges the original brief with `update-report-agentic-ai.md` (27 new verified sources, 2024–2026). The integrated findings appear in the Key Findings and Knowledge Gaps sections; the update report's detailed source annotations, claims audit, and landscape analysis are preserved in Appendices A–C.

---

## Key Findings by Theme

### 1. What agentic AI is and how it differs from standard chatbots

The peer-reviewed literature defines AI agents as systems that couple a large language model (LLM) with perception, planning, memory, and tool use so they can act on the world rather than only generate text (Wang et al., 2024). Three technical foundations recur across the field. First, chain-of-thought prompting elicits intermediate reasoning steps that improve performance on complex tasks (Wei et al., 2022). Second, the ReAct pattern interleaves reasoning traces with actions, letting a model query APIs and knowledge bases mid-task; it reduced hallucination and error propagation compared with reasoning-only methods on question answering tasks (Yao et al., 2023). Third, models can be trained to decide when to call tools such as calculators and search engines, as demonstrated by Toolformer (Schick et al., 2023).

The distinction from a chatbot follows directly. A chatbot produces text within a conversation. An agent maintains a memory stream, reflects on past steps, forms plans, invokes external tools, and executes actions in a loop with environment feedback (Park et al., 2023; Wang et al., 2024). Multi-agent variants assign roles so agents converse and collaborate on one task (Li et al., 2023; Wu et al., 2023). Voyager shows the pattern for long-horizon work: an automatic curriculum, a growing library of executable skills, and iterative prompting with execution errors and self-verification (Wang et al., 2023). In practice this means an agent can read and edit project files, run code, inspect output, and correct itself, which is the workflow difference most relevant to researchers (Yao et al., 2023).

Recent surveys refine the definition. A PRISMA-based survey of 90 studies distinguishes symbolic from neural agentic lineages and maps their applications and governance gaps (Abou Ali et al., 2025). A conceptual taxonomy separates "AI agents" from "agentic AI," the latter emphasizing goal-directed autonomy (Sapkota et al., 2026). The practical lesson for this article is unchanged: the boundary between chatbot and agent is the tool-use loop with environment feedback.

### 2. Applications in academic research

The most complete demonstration is The AI Scientist, which generates research ideas, writes code, runs experiments, produces a paper, and runs a simulated review, at a reported cost under US$15 per paper, with an automated reviewer scoring near human performance (Lu et al., 2024). The same architecture family supports coding, mathematics, and question answering through conversable agents (Wu et al., 2023) and role-playing agent pairs (Li et al., 2023). A peer-reviewed multi-stage "AI research lab," Agent Laboratory, uses role-playing agents that run experiments, write reports, and produce a paper, with reported reductions in research time and cost (Schmidgall et al., 2025). A domain-specific agent for fully automated multi-omic analyses, AutoBA, includes an automated code-repair mechanism that stabilizes end-to-end bioinformatics pipelines (Zhou et al., 2024).

These results show what agentic workflows can do, and they also raise unanswered questions about quality assurance, review burden, and disclosure when automation covers the full research pipeline. Benchmark evidence cautions against overclaiming: on ScienceAgentBench, 102 data-analysis tasks extracted from 44 peer-reviewed papers, the best agent solved 32.4% of tasks independently and 34.3% with expert-provided knowledge; OpenAI o1-preview reached 42.2% at more than ten times the cost (Chen et al., 2024).

**Archaeology and heritage (updated).** Published archaeology applications historically used interactive chatbots rather than full agents. Researchers used ChatGPT iteratively to develop an anomaly-detection application for aerial and satellite imagery, concluding that LLMs lower barriers between humanities researchers and programming skills (Ciccone, 2024). Similar single-model studies cover remote sensing archaeology (Agapiou & Lysandrou, 2023) and the wider implications of LLMs and generative AI for the discipline (Cobb, 2023). As of this update, agentic AI has entered the heritage and humanities literature: Pavlidis (2025) embeds agentic AI in risk-aware semantic digital twins of heritage assets, and Routsis et al. (2026) apply agentic AI to data discovery in the social sciences and humanities. Archaeology now also has its own LLM and AI reviews (Qi & Wen, 2025; Orengo et al., 2026). The claim that *no* agentic-AI literature exists in the sector is therefore outdated; what still does not exist is any published study documenting an agent executing an archaeological data-analysis pipeline in R.

### 3. Frameworks and platforms

Peer-reviewed coverage exists for research frameworks: AutoGen (Wu et al., 2023), CAMEL (Li et al., 2023), Voyager (Wang et al., 2023), and the generative-agent architecture (Park et al., 2023). Textbook treatment of LangChain agents is available (Martra, 2024).

**Updated platform claim.** OpenHands (Wang, X. et al., 2024), peer-reviewed at ICLR 2025 and MIT-licensed, is an open platform on which an agent writes code, runs a command line, and browses the web inside sandboxed environments. This is the architecture class to which Claude Code and OpenCode belong, and OpenHands powers the code-execution agent evaluated in ScienceAgentBench (Chen et al., 2024). The named commercial products themselves (AutoGPT, CrewAI, Claude Code, Cursor, OpenCode) still lack direct peer-reviewed documentation, but the claim that their architecture has no peer-reviewed treatment no longer holds.

An R-native option exists: the `llmflow` package on CRAN provides a reasoning-and-acting workflow for automated data analysis (Liu, 2026), a direct precedent for R-based agentic work. `gptr` (Gu, 2024) also wraps the ChatGPT API from R, but it is a chatbot interface without a tool loop, self-correction, or file editing. Gray-literature seminar reports combine R with agentic workflows (Maestri, 2026, using the open-source OpenCode tool; Zyphur, 2026) but are not peer reviewed and should be cited only with that caveat.

### 4. Ethical considerations

Experimental evidence shows that judgments of authorship, responsibility, and required disclosure shift with the degree of generative-AI assistance in text production (Formosa et al., 2024), so disclosure norms matter. Guidance for researchers on responsible AI use is emerging in book form (Eager, 2024). Archaeology-specific discussions flag applications, implications, and ethical considerations of AI including NLP and machine learning (Tenzer et al., 2024). A peer-reviewed ethics framework for AI in cultural heritage adds a general frame (Tiribelli et al., 2024), a position paper on generative AI and human agency complements it (Spennemann, 2024), and an overview of governing AI adoption in archaeology argues for structured governance (Gattiglia, 2025).

**Hallucination is now empirical, not hypothetical (updated).** Measured reference-hallucination rates during systematic-review screening were 39.6% for GPT-3.5, 28.6% for GPT-4, and 91.4% for Bard (Chelli et al., 2024). An automated framework, SourceCheckup, found 50–90% of LLM responses unsupported by their cited references across a family of models (Wu, K. et al., 2025). Heritage-specific evidence predates both: across 36 iterations, ChatGPT-4 essays on heritage significance contained many fictitious references with plausible authors and titles (Spennemann, 2023). Hicks et al. (2024) argue the term "hallucination" understates the problem because LLMs are indifferent to the truth of their outputs. A 2026 article should present these numbers, not impressions.

**Reporting standards are emerging.** TRIPOD-LLM, an international reporting guideline, specifies what must be disclosed in studies using LLMs (model versions, prompts, data, output validation), with a structure that transfers from medicine to archaeology (Gallifant et al., 2025). Reproducibility of agent-driven analyses, meaning pinning model versions, prompts, tool outputs, and audit trails, has no published treatment specific to archaeology; the explainability problem is only now being surveyed for tool-augmented agents generally (Roth et al., 2026).

### 5. Archaeological and R-specific applications

The archaeology literature splits into machine-learning methods arriving in practice (Bickler, 2021; Bellat et al., 2025), AI reviews for human-sciences research (Chapinal-Heras & Diaz-Sanchez, 2023; Qi & Wen, 2025; Orengo et al., 2026), human-AI collaborative frameworks for heritage reconstruction (Arzomand et al., 2026), and chatbot-era experiments (Agapiou & Lysandrou, 2023; Ciccone, 2024; Cobb, 2023). A European research-and-development agenda positions AI for digital heritage in a wider policy landscape (Münster et al., 2024). The target journal itself published a cautionary case: AI-generated visual reconstructions of prehistoric humans diverged from the scholarly literature (Magnani & Clindaniel, 2025).

On the R side, the tidyverse ecosystem defines current data-science practice (MacFarland, 2024), `llmflow` demonstrates agent-style reasoning-and-acting in R (Liu, 2026), and `gptr` provides a chatbot-level ChatGPT interface (Gu, 2024). Empirical evidence that LLM statistical output needs cross-validation comes from a comparison in which ChatGPT-4 matched SPSS on simple analyses but diverged on post-hoc comparisons, confidence intervals, and complex tests (Shahrul & Syed Mohamed, 2024).

**Core gap intact (updated).** No source combines these threads: agentic AI applied to archaeological data analysis executed in R. The R-specific niche is unserved — all benchmarked agents speak Python (Chen et al., 2024), the R artifacts are a chatbot wrapper (Gu, 2024) and unpublished seminar reports (Maestri, 2026; Zyphur, 2026).

## Knowledge Gaps

1. **No agentic R pipeline for archaeological data.** Agentic AI has entered the heritage and humanities literature (Pavlidis, 2025; Routsis et al., 2026), but no published study documents an agent executing an archaeological data-analysis pipeline. This is the article's core contribution.
2. **No R-native agent benchmark.** ScienceAgentBench is Python-only (Chen et al., 2024); nothing comparable exists for R, let alone for archaeological data. A how-to article cannot currently point readers to validated performance figures for R agents.
3. **No archaeology-specific evaluation.** No benchmark or study compares human-only versus agent-assisted analysis on archaeological data for accuracy, cost, or hallucination rate.
4. **Reproducibility standards absent for archaeology.** TRIPOD-LLM (Gallifant et al., 2025) is medicine-specific but its structure transfers; SourceCheckup (Wu, K. et al., 2025) automates reference-support checking. Neither is archaeology-specific.
5. **Attribution norms underspecified.** Beyond general authorship experiments (Formosa et al., 2024) and engineering-side transparency work (Bacon & Menon, 2025), no archaeology journal has published worked examples of how to acknowledge agentic assistance.

## Relevance to an *Advances in Archaeological Practice* How-to Article

The gaps above define the contribution. A how-to article fits the journal's brief: step-by-step guidance for a task becoming common practice, written for a broad audience readable by undergraduates, roughly 3,500 words excluding references (Cambridge University Press, 2025; author instructions on file in this repository). The journal already publishes AI-related practice articles, including Magnani & Clindaniel (2025), which strengthens fit. The target journal's author instructions already require describing AI tools used in the acknowledgments, so the article can model that practice. Useful constraints from the instructions: define specialized terms, avoid proprietary-tool advertising by covering multiple competing products, and keep the article focused. The verified foundations (Wei et al., 2022; Yao et al., 2023; Wang et al., 2024) provide citable background, the archaeological chatbot and AI studies (Agapiou & Lysandrou, 2023; Ciccone, 2024; Qi & Wen, 2025; Orengo et al., 2026) anchor the article in the discipline, and the measured hallucination evidence (Chelli et al., 2024; Spennemann, 2023) supplies the risk section. The article would be the first peer-reviewed, practical treatment of agentic AI executing an archaeological data-analysis pipeline in R.

---

## Source List (APA 7.0, verified)

Abou Ali, M., Dornaika, F., & Charafeddine, J. (2025). Agentic AI: A comprehensive survey of architectures, applications, and future directions. *Artificial Intelligence Review, 59*(1), Article 11. https://doi.org/10.1007/s10462-025-11422-4

Agapiou, A., & Lysandrou, V. (2023). Interacting with the artificial intelligence (AI) language model ChatGPT: A synopsis of Earth observation and remote sensing in archaeology. *Heritage, 6*(5), 4072–4085. https://doi.org/10.3390/heritage6050214

Arzomand, K., Kalganova, T., & Rustell, M. (2026). HARF: A human–AI collaborative framework for cultural heritage reconstruction with expert-guided multi-platform generative AI and systematic prompt engineering. *Digital Applications in Archaeology and Cultural Heritage, 42*, e00554. https://doi.org/10.1016/j.daach.2026.e00554

Bacon, G., & Menon, V. (2025). Exploring transparency and AI assessment in LLM-assisted research applications. In *SoutheastCon 2025* (pp. 346–351). IEEE. https://doi.org/10.1109/southeastcon56624.2025.10971523

Bellat, M., Figueroa, J. D. O., Reeves, J. S., Taghizadeh-Mehrjardi, R., Tennie, C., & Scholten, T. (2025). Machine learning applications in archaeological practices: A review. *Journal of Computer Applications in Archaeology, 8*(1), 282–321. https://doi.org/10.5334/jcaa.201

Bickler, S. H. (2021). Machine learning arrives in archaeology. *Advances in Archaeological Practice, 9*(2), 186–191. https://doi.org/10.1017/aap.2021.6

Chapinal-Heras, D., & Diaz-Sanchez, C. (2023). A review of AI applications in Human Sciences research. *Digital Applications in Archaeology and Cultural Heritage, 30*, e00288. https://doi.org/10.1016/j.daach.2023.e00288

Chelli, M., Descamps, J., Lavoué, V., Trojani, C., Azar, M., Deckert, M., Raynier, J.-L., Clowez, G., Boileau, P., & Ruetsch-Chelli, C. (2024). Hallucination rates and reference accuracy of ChatGPT and Bard for systematic reviews: Comparative analysis. *Journal of Medical Internet Research, 26*, Article e53164. https://doi.org/10.2196/53164

Chen, Z., Chen, S., Ning, Y., Zhang, Q., Wang, B., Yu, B., Li, Y., Liao, Z., Wei, C., Lu, Z., Dey, V., Xue, M., Baker, F. N., Burns, B., Adu-Ampratwum, D., Huang, X., Ning, X., Gao, S., Su, Y., & Sun, H. (2024). *ScienceAgentBench: Toward rigorous assessment of language agents for data-driven scientific discovery* (arXiv:2410.05080). arXiv. https://doi.org/10.48550/arXiv.2410.05080

Ciccone, G. (2024). ChatGPT as a digital assistant for archaeology: Insights from the Smart Anomaly Detection Assistant development. *Heritage, 7*(10), 5428–5445. https://doi.org/10.3390/heritage7100256

Cobb, P. J. (2023). Large language models and generative AI, oh my!: Archaeology in the time of ChatGPT, Midjourney, and beyond. *Advances in Archaeological Practice, 11*(3), 363–369. https://doi.org/10.1017/aap.2023.20

Eager, B. (2024). Towards responsible use of AI tools. In *AI-Powered Scholar* (Chapter 7). Routledge. https://doi.org/10.4324/9781032665276-7

Formosa, P., Bankins, S., Matulionyte, R., & Ghasemi, O. (2024). Can ChatGPT be an author? Generative AI creative writing assistance and perceptions of authorship, creatorship, responsibility, and disclosure. *AI & Society, 40*(5), 3405–3417. https://doi.org/10.1007/s00146-024-02081-0

Gallifant, J., Afshar, M., Ameen, S., Aphinyanaphongs, Y., Chen, S., Cacciamani, G., Demner-Fushman, D., Dligach, D., Daneshjou, R., Fernandes, C., Hansen, L. H., Landman, A., Lehmann, L., McCoy, L. G., Miller, T., Moreno, A., Munch, N., Restrepo, D., Savova, G., ... Bitterman, D. S. (2025). The TRIPOD-LLM reporting guideline for studies using large language models. *Nature Medicine, 31*(1), 60–69. https://doi.org/10.1038/s41591-024-03425-5

Gattiglia, G. (2025). Managing artificial intelligence in archeology: An overview. *Journal of Cultural Heritage, 71*, 225–233. https://doi.org/10.1016/j.culher.2024.11.020

Gu, W. (2024). *gptr: A convenient R interface with the OpenAI "ChatGPT" API* [R package]. CRAN. https://doi.org/10.32614/cran.package.gptr

Harris, K. D. (2025). AIRUS: A simple workflow for AI-assisted exploration of scientific data [Preprint]. *bioRxiv*. https://doi.org/10.1101/2025.02.23.639768

Hicks, M. T., Humphries, J., & Slater, J. (2024). ChatGPT is bullshit. *Ethics and Information Technology, 26*(2), Article 38. https://doi.org/10.1007/s10676-024-09775-5

Li, G., Hammoud, H., Itani, H., Khizbullin, D., & Ghanem, B. (2023). CAMEL: Communicative agents for "mind" exploration of large language model society. *Advances in Neural Information Processing Systems, 36*. arXiv:2303.17760

Liu, Z. (2026). *llmflow: Reasoning and acting workflow for automated data analysis* [R package]. CRAN. https://doi.org/10.32614/cran.package.llmflow

Lu, C., Lu, C., Lange, R. T., Foerster, J., Clune, J., & Ha, D. (2024). *The AI Scientist: Towards fully automated open-ended scientific discovery*. arXiv. https://doi.org/10.48550/arXiv.2408.06292

MacFarland, T. W. (2024). Data science and R, base R, and the tidyverse ecosystem. In *Introduction to Data Science in Biostatistics* (pp. 175–219). Springer. https://doi.org/10.1007/978-3-031-46383-9_4

Maestri, R. (2026). *Building autonomous AI agents for scientific research* [Seminar report; gray literature, not peer reviewed]. Instats Inc. https://doi.org/10.61700/jbn2c5tcpv93w2419

Magnani, M., & Clindaniel, J. (2025). Artificial intelligence and the interpretation of the past. *Advances in Archaeological Practice, 14*(2), 218–233. https://doi.org/10.1017/aap.2025.10110

Martra, P. (2024). LangChain and agents. In *Large Language Models Projects* (Chapter 3). Apress. https://doi.org/10.1007/979-8-8688-0515-8_3

Münster, S., Maiwald, F., di Lenardo, I., Henriksson, J., Isaac, A., Graf, M. M., Beck, C., & Oomen, J. (2024). Artificial intelligence for digital heritage innovation: Setting up an R&D agenda for Europe. *Heritage, 7*(2), 794–816. https://doi.org/10.3390/heritage7020038

Orengo, H. A., Berganzo-Besga, I., & Lumbreras, F. (2026). Theory and practice of artificial intelligence in archaeology. *Journal of Archaeological Science, 190*, Article 106571. https://doi.org/10.1016/j.jas.2026.106571

Park, J. S., O'Brien, J. C., Cai, C. J., Morris, M. R., Liang, P., & Bernstein, M. S. (2023). Generative agents: Interactive simulacra of human behavior. In *Proceedings of the 36th Annual ACM Symposium on User Interface Software and Technology*. https://doi.org/10.1145/3586183.3606763

Pavlidis, G. (2025). Agentic AI for cultural heritage: Embedding risk memory in semantic digital twins. *Computers, 14*(7), Article 266. https://doi.org/10.3390/computers14070266

Qi, X., & Wen, R. (2025). Large language and multimodal models in archaeological science: A review. *Electronics, 14*(22), Article 4507. https://doi.org/10.3390/electronics14224507

Roth, B., Edwards, N., Hong, P., Schoenegger, L., & Schuster, S. (2026). *From models to systems: A survey of explainability for tool-augmented language models and AI agents*. SSRN. https://doi.org/10.2139/ssrn.6134986

Routsis, V., Gan, Y., Uprety, S., & Bikakis, A. (2026). Agentic AI for data discovery in the social sciences and humanities. In *AI and smart data for cultural heritage* (pp. 36–57). Routledge. https://doi.org/10.4324/9781003666530-3

Sapkota, R., Roumeliotis, K. I., & Karkee, M. (2026). AI agents vs. agentic AI: A conceptual taxonomy, applications and challenges. *Information Fusion, 126*, Article 103599. https://doi.org/10.1016/j.inffus.2025.103599

Schick, T., Dwivedi-Yu, J., Dessi, R., Raileanu, R., Lomeli, M., Zettlemoyer, L., Cancedda, N., & Scialom, T. (2023). Toolformer: Language models can teach themselves to use tools. *Advances in Neural Information Processing Systems, 36*. arXiv:2302.04761

Schmidgall, S., Su, Y., Wang, Z., Sun, X., Wu, J., Yu, X., Liu, J., Moor, M., Liu, Z., & Barsoum, E. (2025). Agent Laboratory: Using LLM agents as research assistants. In *Findings of the Association for Computational Linguistics: EMNLP 2025* (pp. 5977–6043). Association for Computational Linguistics. https://doi.org/10.18653/v1/2025.findings-emnlp.320

Shahrul, A. I., & Syed Mohamed, A. M. F. (2024). A comparative evaluation of Statistical Product and Service Solutions (SPSS) and ChatGPT-4 in statistical analyses. *Cureus, 16*(10), Article e72581. https://doi.org/10.7759/cureus.72581

Spennemann, D. H. R. (2023). ChatGPT and the generation of digitally born "knowledge": How does a generative AI language model interpret cultural heritage values? *Knowledge, 3*(3), 480–512. https://doi.org/10.3390/knowledge3030032

Spennemann, D. H. R. (2024). Generative artificial intelligence, human agency and the future of cultural heritage. *Heritage, 7*(7), 3597–3609. https://doi.org/10.3390/heritage7070170

Tenzer, M., Pistilli, G., Brandsen, A., & Shenfield, A. (2024). Debating AI in archaeology: Applications, implications, and ethical considerations. *Internet Archaeology, 67*. https://doi.org/10.11141/ia.67.8

Tiribelli, S., Pansoni, S., Frontoni, E., & Giovanola, B. (2024). Ethics of artificial intelligence for cultural heritage: Opportunities and challenges. *IEEE Transactions on Technology and Society, 5*(3), 293–305. https://doi.org/10.1109/tts.2024.3432407

Wang, G., Xie, Y., Jiang, Y., Mandlekar, A., Xiao, C., Zhu, Y., Fan, L., & Anandkumar, A. (2023). Voyager: An open-ended embodied agent with large language models. *Transactions on Machine Learning Research*. arXiv:2305.16291

Wang, L., Ma, C., Feng, X., Zhang, Z., Yang, H., Zhang, J., Chen, Z., Tang, J., Chen, X., Lin, Y., Zhao, W. X., Wei, Z., & Wen, J. (2024). A survey on large language model based autonomous agents. *Frontiers of Computer Science, 18*(6). https://doi.org/10.1007/s11704-024-40231-1

Wang, X., Li, B., Song, Y., Xu, F. F., Tang, X., Zhuge, M., Pan, J., Song, Y., Li, B., Singh, J., Tran, H. H., Li, F., Ma, R., Zheng, M., Qian, B., Shao, Y., Muennighoff, N., Zhang, Y., Hui, B., ... Neubig, G. (2024). *OpenHands: An open platform for AI software developers as generalist agents* (arXiv:2407.16741). arXiv. https://doi.org/10.48550/arXiv.2407.16741

Wei, J., Wang, X., Schuurmans, D., Bosma, M., Ichter, B., Xia, F., Chi, E., Le, Q. V., & Zhou, D. (2022). Chain-of-thought prompting elicits reasoning in large language models. *Advances in Neural Information Processing Systems, 35*, 24824–24837.

Wu, K., Wu, E., Wei, K., Zhang, A., Casasola, A., Nguyen, T., Riantawan, S., Shi, P., Ho, D., & Zou, J. (2025). An automated framework for assessing how well LLMs cite relevant medical references. *Nature Communications, 16*(1), Article 3615. https://doi.org/10.1038/s41467-025-58551-6

Wu, Q., Bansal, G., Zhang, J., Wu, Y., Li, B., Zhu, E., Jiang, L., Zhang, X., Zhang, S., Liu, J., Awadallah, A., White, R. W., Burger, D., & Wang, C. (2023). *AutoGen: Enabling next-gen LLM applications via multi-agent conversation*. arXiv. https://doi.org/10.48550/arXiv.2308.08155

Yao, S., Zhao, J., Yu, D., Du, N., Shafran, I., Narasimhan, K., & Cao, Y. (2023). ReAct: Synergizing reasoning and acting in language models. In *International Conference on Learning Representations*. arXiv:2210.03629

Zhou, J., Zhang, B., Li, G., Chen, X., Li, H., Xu, X., Chen, S., He, W., Xu, C., Liu, L., & Gao, X. (2024). An AI agent for fully automated multi-omic analyses. *Advanced Science, 11*(44), Article 2407094. https://doi.org/10.1002/advs.202407094

Zyphur, M. (2026). *Agentic AI for academic research* [Seminar report; gray literature, not peer reviewed]. Instats Inc. https://doi.org/10.61700/3senhizu99tz12668

---

## Method and Limitations

Sources were retrieved via Crossref, OpenAlex, Semantic Scholar, and arXiv through the refcheck, scholar_mcp, and rust-research-mcp tools; every reference was verified against at least one bibliographic database before inclusion. Claims about paper content are limited to what each title and abstract states. The AI Scientist's cost figure, the ReAct benchmark improvements, the ScienceAgentBench solve rates, the Chelli hallucination rates, and the SourceCheckup unsupported-response range are reported from the papers' abstracts and were not independently reproduced. Platform claims about AutoGPT, CrewAI, Claude Code, Cursor, and OpenCode rest on the underlying architectures covered by the cited surveys; OpenHands provides peer-reviewed documentation for the command-line-and-browser agent class. Two sources carry the DOI prefix 10.61700 (Instats Inc.); Crossref classifies both as reports, so they are marked gray literature. One article (Sapkota et al.) has an online-first year (2025) that differs from its Crossref issue year (2026); the 2026 year is used per the issue record. The Routledge chapter's editors were not recorded in Crossref metadata and need confirmation before submission. The APA style guide used is APA 7.0 per the deep-research skill contract.

## AI Disclosure

This research brief was produced with AI-assisted research tools: the deep-research skill pipeline, literature search and verification via Crossref, OpenAlex, Semantic Scholar, and arXiv APIs, and drafting assistance from a large language model. All bibliographic entries were machine-verified against publication databases before inclusion.

---

# Appendix A: Detailed Source Annotations (2024–2026 additions)

Sources below supplement the brief with publications found in the 2026 update search, verified against Crossref, OpenAlex, or arXiv on 2026-09-15. Each entry notes its theme mapping and what it adds to the article.

## A.1 Agentic AI in Archaeology, Cultural Heritage, and Heritage Science

**Pavlidis, G. (2025). Agentic AI for cultural heritage: Embedding risk memory in semantic digital twins. *Computers, 14*(7), Article 266. https://doi.org/10.3390/computers14070266**
Maps to Theme 5 and Knowledge Gap 1. The first journal article in the heritage sector framed explicitly around agentic AI, applied to risk-aware semantic digital twins of heritage assets. It does not execute R analysis pipelines; it is a conceptual-system paper, but it removes the claim that agentic AI has no literature at all in the sector.

**Routsis, V., Gan, Y., Uprety, S., & Bikakis, A. (2026). Agentic AI for data discovery in the social sciences and humanities. In *AI and smart data for cultural heritage* (pp. 36–57). Routledge. https://doi.org/10.4324/9781003666530-3**
Maps to Themes 2 and 5, Knowledge Gap 1. A peer-reviewed book chapter (Routledge, May 2026) on agentic AI for data discovery in the social sciences and humanities, using cultural heritage as its setting. The chapter's editors were not recorded in Crossref metadata; confirm before citing in the article.

**Qi, X., & Wen, R. (2025). Large language and multimodal models in archaeological science: A review. *Electronics, 14*(22), Article 4507. https://doi.org/10.3390/electronics14224507**
Maps to Themes 2 and 5, Knowledge Gap 1. The first comprehensive review of LLMs and large multimodal models (LMMs) in archaeological science, framing archaeology as a proving ground for these models. Directly supports the article's premise and its literature base.

**Orengo, H. A., Berganzo-Besga, I., & Lumbreras, F. (2026). Theory and practice of artificial intelligence in archaeology. *Journal of Archaeological Science, 190*, Article 106571. https://doi.org/10.1016/j.jas.2026.106571**
Maps to Theme 5. A Journal of Archaeological Science review covering both theory and applied practice of AI in archaeology, from a team that previously published LLM-based archaeological workflows. Useful for positioning and the practical-methods section.

**Magnani, M., & Clindaniel, J. (2025). Artificial intelligence and the interpretation of the past. *Advances in Archaeological Practice, 14*(2), 218–233. https://doi.org/10.1017/aap.2025.10110**
Maps to Theme 2, Knowledge Gap 5, and the Relevance section. Published in the target journal (December 2025 issue). Examines AI-generated visual reconstructions of prehistoric humans and reports they diverge from the scholarly literature, a cautionary case study for the article's risk section. Content claims rest on title and abstract; confirm specific findings against the full text before quoting.

**Münster, S., Maiwald, F., di Lenardo, I., Henriksson, J., Isaac, A., Graf, M. M., Beck, C., & Oomen, J. (2024). Artificial intelligence for digital heritage innovation: Setting up an R&D agenda for Europe. *Heritage, 7*(2), 794–816. https://doi.org/10.3390/heritage7020038**
Maps to Themes 4 and 5. A European research-and-development agenda for AI in digital heritage, useful for framing where agentic archaeology sits in a wider policy landscape.

**Tiribelli, S., Pansoni, S., Frontoni, E., & Giovanola, B. (2024). Ethics of artificial intelligence for cultural heritage: Opportunities and challenges. *IEEE Transactions on Technology and Society, 5*(3), 293–305. https://doi.org/10.1109/tts.2024.3432407**
Maps to Theme 4. A peer-reviewed ethics framework for AI in cultural heritage; strengthens the ethics discussion beyond archaeology-specific sources.

**Gattiglia, G. (2025). Managing artificial intelligence in archeology: An overview. *Journal of Cultural Heritage, 71*, 225–233. https://doi.org/10.1016/j.culher.2024.11.020**
Maps to Theme 4 and Relevance. An overview of managing and governing AI in archaeology, arguing for structured governance of AI adoption. Supports the article's governance and reproducibility framing.

**Spennemann, D. H. R. (2024). Generative artificial intelligence, human agency and the future of cultural heritage. *Heritage, 7*(7), 3597–3609. https://doi.org/10.3390/heritage7070170**
Maps to Themes 4 and 5. A position paper on generative AI, human agency, and heritage futures; complements the ethics thread.

**Bellat, M., Figueroa, J. D. O., Reeves, J. S., Taghizadeh-Mehrjardi, R., Tennie, C., & Scholten, T. (2025). Machine learning applications in archaeological practices: A review. *Journal of Computer Applications in Archaeology, 8*(1), 282–321. https://doi.org/10.5334/jcaa.201**
Maps to Theme 5. A peer-reviewed ML review that doubles as a workflow guide for archaeologists; the most directly practical methods reference found in the archaeology literature.

**Spennemann, D. H. R. (2023). ChatGPT and the generation of digitally born "knowledge": How does a generative AI language model interpret cultural heritage values? *Knowledge, 3*(3), 480–512. https://doi.org/10.3390/knowledge3030032**
Maps to Theme 4. An empirical study: across 36 iterations, ChatGPT-4 essays on heritage significance contained many fictitious references with plausible authors and titles. Discipline-specific, quantitative evidence of hallucinated citations in heritage writing.

## A.2 Agentic AI Tools for R and Statistical Analysis

**Gu, W. (2024). *gptr: A convenient R interface with the OpenAI "ChatGPT" API* [R package]. CRAN. https://doi.org/10.32614/cran.package.gptr**
Maps to Theme 5 and Knowledge Gap 2. A CRAN-maintained R package wrapping the ChatGPT API. It is a chatbot interface, not an agent: no tool loop, no self-correction, no file editing. Shows demand for LLM-assisted R work but does not fill the agentic-R gap.

**Shahrul, A. I., & Syed Mohamed, A. M. F. (2024). A comparative evaluation of Statistical Product and Service Solutions (SPSS) and ChatGPT-4 in statistical analyses. *Cureus, 16*(10), Article e72581. https://doi.org/10.7759/cureus.72581**
Maps to Theme 5 and Knowledge Gap 2. Empirical comparison (medicine and dentistry data): ChatGPT-4 matched SPSS on simple analyses but diverged in post-hoc comparisons, confidence intervals, and complex tests; the authors conclude careful validation is required. Direct evidence that LLM statistics output needs cross-validation, which the how-to article should teach.

**Maestri, R. (2026). *Building autonomous AI agents for scientific research* [Seminar report; gray literature, not peer reviewed]. Instats Inc. https://doi.org/10.61700/jbn2c5tcpv93w2419**
Maps to Themes 3 and 5, Knowledge Gap 2. A workshop report on building autonomous AI agents for research in R using the open-source OpenCode agent tool. Crossref records this DOI with type "report" under the Instats Inc. prefix (10.61700). The only located item that combines R, agentic workflows, and practical deployment, but cite only with an explicit gray-literature caveat.

## A.3 Practical Guides and Workflows for AI Agents in Data Analysis

**Wang, X., et al. (2024). *OpenHands: An open platform for AI software developers as generalist agents* (arXiv:2407.16741). arXiv. https://doi.org/10.48550/arXiv.2407.16741**
Maps to Theme 3, Knowledge Gap 4. Accepted at ICLR 2025 (per arXiv metadata); 24 authors; MIT license; the agent writes code, runs a command line, and browses the web inside sandboxed environments. The strongest peer-reviewed platform reference for the command-line-and-browser agent class that Claude Code, OpenCode, and similar tools belong to. It also powers the code-execution agent evaluated in ScienceAgentBench.

**Chen, Z., et al. (2024). *ScienceAgentBench: Toward rigorous assessment of language agents for data-driven scientific discovery* (arXiv:2410.05080). arXiv. https://doi.org/10.48550/arXiv.2410.05080**
Maps to Theme 3, Knowledge Gap 4. ICLR 2025 (60 pages, per arXiv metadata). A benchmark of 102 data-analysis tasks extracted from 44 peer-reviewed publications across four disciplines, each task requiring a self-contained Python program. Best agent solved 32.4% of tasks independently and 34.3% with expert-provided knowledge; OpenAI o1-preview reached 42.2% at more than ten times the cost. Conclusions: current agents cannot yet automate data-driven discovery end to end. Python-only; no R, no archaeology tasks.

**Harris, K. D. (2025). AIRUS: A simple workflow for AI-assisted exploration of scientific data [Preprint]. *bioRxiv*. https://doi.org/10.1101/2025.02.23.639768**
Maps to Theme 3, Knowledge Gap 2. A worked, low-barrier workflow (AI Research Under Supervision) in which a researcher asks an LLM to generate hypotheses, produce code, and interpret results in repeated cycles, intervening when necessary, using cut-and-paste between a web LLM and an online Jupyter notebook. Preprint, not peer reviewed. The closest published analogue to the how-to article's workflow structure, minus R and archaeology.

**Schmidgall, S., et al. (2025). Agent Laboratory: Using LLM agents as research assistants. In *Findings of the Association for Computational Linguistics: EMNLP 2025* (pp. 5977–6043). ACL. https://doi.org/10.18653/v1/2025.findings-emnlp.320**
Maps to Theme 3. Peer-reviewed, multi-stage "AI research lab" with role-playing agents that run experiments, write reports, and produce a paper argued to reduce research time and cost. Supplements the AI Scientist discussion with a peer-reviewed (Findings EMNLP) treatment.

**Zhou, J., et al. (2024). An AI agent for fully automated multi-omic analyses. *Advanced Science, 11*(44), Article 2407094. https://doi.org/10.1002/advs.202407094**
Maps to Theme 3. AutoBA is a peer-reviewed autonomous omics agent with an automated code-repair mechanism that stabilizes end-to-end bioinformatics analyses. Demonstrates domain-specific agent design that an archaeology analogue could mirror.

## A.4 Responsible and Reproducible Use of AI Agents

**Gallifant, J., et al. (2025). The TRIPOD-LLM reporting guideline for studies using large language models. *Nature Medicine, 31*(1), 60–69. https://doi.org/10.1038/s41591-024-03425-5**
Maps to Theme 4, Knowledge Gap 3. An international reporting guideline (25 authors) specifying what must be disclosed in studies that use LLMs (model versions, prompts, data, output validation). Medicine-oriented, but its structure transfers directly to archaeology and partly fills Knowledge Gap 3.

**Chelli, M., et al. (2024). Hallucination rates and reference accuracy of ChatGPT and Bard for systematic reviews: Comparative analysis. *Journal of Medical Internet Research, 26*, Article e53164. https://doi.org/10.2196/53164**
Maps to Theme 4. Quantified hallucination rates during systematic-review reference screening: 39.6% (GPT-3.5), 28.6% (GPT-4), 91.4% (Bard). Gives the hallucination concern an empirical basis.

**Hicks, M. T., Humphries, J., & Slater, J. (2024). ChatGPT is bullshit. *Ethics and Information Technology, 26*(2), Article 38. https://doi.org/10.1007/s10676-024-09775-5**
Maps to Theme 4. Argues, via Frankfurt's account of bullshit, that LLMs are indifferent to the truth of their outputs, so "hallucination" understates the problem. A conceptual anchor for the why-verification-matters argument in the how-to article.

**Wu, K., et al. (2025). An automated framework for assessing how well LLMs cite relevant medical references. *Nature Communications, 16*(1), Article 3615. https://doi.org/10.1038/s41467-025-58551-6**
Maps to Theme 4, Knowledge Gap 3. SourceCheckup automatically checks whether LLM responses are supported by their cited references; the earlier finding across a family of models is that 50–90% of responses were unsupported. Reinforces Spennemann (2023) in the heritage domain.

**Bacon, G., & Menon, V. (2025). Exploring transparency and AI assessment in LLM-assisted research applications. In *SoutheastCon 2025* (pp. 346–351). IEEE. https://doi.org/10.1109/southeastcon56624.2025.10971523**
Maps to Theme 4, Knowledge Gap 5. A peer-reviewed IEEE conference paper on transparency and AI assessment in LLM-assisted research. Adds an engineering perspective on auditability; no archaeology-specific worked examples exist, so Knowledge Gap 5 stands.

**Zyphur, M. (2026). *Agentic AI for academic research* [Seminar report; gray literature, not peer reviewed]. Instats Inc. https://doi.org/10.61700/3senhizu99tz12668**
Maps to Themes 3 and 4. Crossref records this DOI with type "report" under the Instats Inc. prefix (10.61700); the abstract describes a seminar on agentic AI as a "disciplined, verifiable, and human-led method" for literature work, analysis, writing, and grants. Not peer reviewed; usable only with an explicit gray-literature caveat.

## A.5 Prompt Engineering and LLM-Assisted Coding for Archaeological Data Analysis

This search area returned the fewest new items. No new peer-reviewed study applies LLM-assisted coding to archaeological data. The closest matches are cross-domain: Shahrul & Syed Mohamed (2024) for statistics via ChatGPT and Spennemann (2023) for heritage essay generation. Two conceptual sources support the framing:

**Sapkota, R., Roumeliotis, K. I., & Karkee, M. (2026). AI agents vs. agentic AI: A conceptual taxonomy, applications and challenges. *Information Fusion, 126*, Article 103599. https://doi.org/10.1016/j.inffus.2025.103599**
Maps to Theme 1. A peer-reviewed taxonomy distinguishing "AI agents" from "agentic AI," published in Information Fusion. Crossref lists the issue year as 2026 (volume 126, February 2026); the DOI and earlier online versions carry 2025. Cite as 2026 per the issue record and flag the online-first date in text.

**Abou Ali, M., Dornaika, F., & Charafeddine, J. (2025). Agentic AI: A comprehensive survey of architectures, applications, and future directions. *Artificial Intelligence Review, 59*(1), Article 11. https://doi.org/10.1007/s10462-025-11422-4**
Maps to Theme 1. A PRISMA-based survey of 90 studies (2018–2025) distinguishing symbolic from neural agentic lineages, with application constraints and governance gaps. Confirms and deepens the brief's Theme 1 definition of agentic AI.

---

# Appendix B: Claims Audit (what changed between brief v1 and this merged version)

**Claim 1 (Theme 2, last paragraph; Knowledge Gap 1): "No agentic-AI literature in archaeology. Published archaeology studies use single-prompt chatbots or classical machine learning."**
Now partially false. Agentic AI now has heritage-sector papers: Pavlidis (2025) builds agentic AI into a cultural heritage context (semantic digital twins), and Routsis et al. (2026) apply agentic AI to data discovery in the social sciences and humanities. Archaeology also now has LLM and AI reviews (Qi & Wen, 2025; Orengo et al., 2026). Revised claim: agentic AI has entered the heritage and humanities literature, but no published study documents an agent executing an archaeological data-analysis pipeline in R. The how-to article remains the first in that specific niche.

**Claim 2 (Theme 5): "No source combines these threads: agentic AI applied to archaeological data analysis executed in R."**
Still true as of this update. `gptr` (Gu, 2024) is chatbot-level; Shahrul & Syed Mohamed (2024) is chatbot-level statistics; Maestri (2026) and Zyphur (2026) combine R or research with agents but are unpublished seminar reports. The gap the article fills is intact.

**Claim 3 (Theme 3): "The commercially distributed tools named in the request (AutoGPT, CrewAI, Claude Code, Cursor, OpenCode) are documented primarily in vendor and project documentation rather than in peer-reviewed literature."**
Weakened. OpenHands (Wang, X. et al., 2024), peer-reviewed at ICLR 2025 and MIT-licensed, is an open platform for command-line-and-browser coding agents, the architecture class that includes Claude Code and OpenCode. Direct peer-reviewed documentation of the named commercial products themselves still does not exist, so the claim survives if narrowed to the products. Recommendation: cite OpenHands as the peer-reviewed platform reference and note that the named tools implement this architecture.

**Claim 4 (Knowledge Gap 3): "Reproducibility of agent-driven analyses ... has no published treatment in the archaeological literature."**
Still true for archaeology specifically. Cross-disciplinarily the gap has narrowed: TRIPOD-LLM (Gallifant et al., 2025) is a transferable reporting guideline, and SourceCheckup (Wu, K. et al., 2025) automates reference-support checking. Neither is archaeology-specific.

**Claim 5 (Knowledge Gap 4): "No evaluation benchmarks. There is no archaeological analogue to the AI Scientist's automated reviewer."**
Changed. ScienceAgentBench (Chen et al., 2024; ICLR 2025) is a rigorous, peer-reviewed benchmark for data-analysis agents, though Python-only and archaeology-free. The lack of an archaeological benchmark persists, but the article can now borrow an existing benchmark design rather than invent one.

**Claim 6 (Theme 4, hallucination discussion):**
The brief treats hallucination as a concern without empirical anchors. Chelli et al. (2024) supply rates (39.6% GPT-3.5, 28.6% GPT-4, 91.4% Bard), Wu, K. et al. (2025) supply the 50–90% unsupported-response range, Spennemann (2023) supplies heritage-specific fictitious references, and Hicks et al. (2024) supply the theoretical frame. These belong in the article's risk section.

**Claim 7 (Knowledge Gap 5, attribution norms):**
Unchanged, with one near miss: Bacon & Menon (2025) treat transparency and assessment of LLM-assisted research, but no archaeology journal has published worked disclosure examples. The how-to article can still make that contribution.

**Claim 8 (Relevance section):**
The statement "The article would be among the first peer-reviewed, practical treatments of agentic AI in archaeological data analysis" is now more precisely the first practical *R-pipeline* treatment. Magnani & Clindaniel (2025) in the same journal shows the venue is actively publishing AI-related practice articles, which strengthens fit. The statement that the journal's author instructions require describing AI tools in acknowledgments is unchanged.

---

# Appendix C: Landscape Shifts, 2024–2026

1. **From preprints to peer review.** The agent platform and benchmark literature moved into peer-reviewed venues: OpenHands (ICLR 2025), ScienceAgentBench (ICLR 2025), Agent Laboratory (Findings EMNLP 2025), AutoBA (Advanced Science 2024). Theme 3 can cite these instead of arXiv-only records.
2. **Hallucination moved from anecdote to measurement.** Chelli et al. (2024), Wu, K. et al. (2025), and Spennemann (2023) quantify fabrication; Hicks et al. (2024) re-theorize it. A 2026 how-to article should present numbers, not impressions.
3. **Reporting standards emerged.** TRIPOD-LLM (2025) shows the discipline is converging on disclosure structures for LLM studies; an archaeology how-to article can adopt the pattern early.
4. **Heritage and archaeology caught up.** Within 18 months the sector produced agentic-heritage (Pavlidis, 2025), agentic-SSH data discovery (Routsis et al., 2026), LLM-in-archaeology reviews (Qi & Wen, 2025; Orengo et al., 2026), multiple governance and ethics pieces (Gattiglia, 2025; Tiribelli et al., 2024; Spennemann, 2024), and a cautionary target-journal case (Magnani & Clindaniel, 2025). The "no agentic-AI literature in archaeology" framing is outdated.
5. **R remains the unserved niche.** All benchmarked agents speak Python; the only R-specific artifacts are a chatbot wrapper (gptr) and unpublished seminar reports. The intersection "agentic AI + archaeology + R" is, as of September 2026, still open.

---

# Appendix D: Update Search Method and Verification Details

Searches ran in September 2026 against Crossref, OpenAlex, Semantic Scholar, and arXiv, using the refcheck, scholar_mcp, and rust-research-mcp tools plus direct API calls. Every DOI resolved in Crossref or OpenAlex; arXiv records (OpenHands, ScienceAgentBench) were verified on the arXiv abstract pages. Semantic Scholar and the arXiv export API intermittently returned HTTP 429 (rate limited) during the searches; affected lookups were repeated through OpenAlex and direct page fetches. Content claims for each source are limited to title and abstract text; quantitative figures (ScienceAgentBench solve rates, Chelli hallucination rates) are quoted from the abstracts and were not independently reproduced. Citation counts are omitted because they change daily. Two sources carry the DOI prefix 10.61700 (Instats Inc.); Crossref classifies both as reports, so they are marked gray literature. One article (Sapkota et al.) has an online-first year (2025) that differs from its Crossref issue year (2026); the 2026 year is used per the issue record. The Routledge chapter's editor names were not in Crossref metadata and need confirmation before submission.