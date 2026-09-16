# Reference Verification Report

**File checked:** `notes/research-brief-agentic-ai.md` | **Date:** 2026-09-15 | **Tool:** refcheck MCP (Crossref, Semantic Scholar, arXiv) + direct arXiv abstract pages

## Summary

| Category | Count | Status |
|----------|-------|--------|
| References in source list | 49 | — |
| DOIs checked via refcheck | 44 | 44 resolved |
| arXiv-only (no DOI in brief), confirmed via abstract pages | 4 | 4 confirmed |
| arXiv-issued DOIs, confirmed via abstract pages after partial refcheck metadata | 4 | 4 confirmed |
| Wei et al. 2022 (no ID in brief) | 1 | Verified, DOI now known |
| **Fabricated / unverifiable** | 0 | None |

## Per-reference results

### Verified via refcheck DOI lookup (44)

All 44 DOIs resolved against Crossref or Semantic Scholar. Four arXiv-issued DOIs returned partial metadata from refcheck but were confirmed independently against arXiv abstract pages: AutoGen (2308.08155), AI Scientist (2408.06292), OpenHands (2407.16741), ScienceAgentBench (2410.05080).

### Verified via arXiv abstract pages (8 total; 4 arXiv-only in the brief)

arXiv-only entries in the brief:

| Citation in brief | arXiv ID | Confirmed | Notes |
|-------------------|----------|-----------|-------|
| Yao et al. 2023 (ReAct) | 2210.03629 | Yes | v3 is ICLR camera-ready |
| Schick et al. 2023 (Toolformer) | 2302.04761 | Yes | NeurIPS 2023 proceedings version exists (DOI 10.52202/075280-2997); brief cites arXiv, which is valid |
| Li et al. 2023 (CAMEL) | 2303.17760 | Yes | Accepted at NeurIPS 2023 |
| Wang, G. et al. 2023 (Voyager) | 2305.16291 | Yes | — |

Entries with arXiv-issued DOIs (10.48550/...) in the brief, also confirmed on abstract pages:

| Citation in brief | arXiv ID | Confirmed | Notes |
|-------------------|----------|-----------|-------|
| Wu, Q. et al. 2023 (AutoGen) | 2308.08155 | Yes | — |
| Lu et al. 2024 (AI Scientist) | 2408.06292 | Yes | cost and reviewer claims confirmed in abstract |
| Wang, X. et al. 2024 (OpenHands) | 2407.16741 | Yes | ICLR 2025, MIT license confirmed |
| Chen et al. 2024 (ScienceAgentBench) | 2410.05080 | Yes | ICLR 2025, 32.4%/34.3%/42.2% figures confirmed |

### Verified via verify_reference (1)

| Citation in brief | Verdict | DOI found | Venue confirmed |
|-------------------|---------|-----------|-----------------|
| Wei et al. 2022 (chain-of-thought) | verified (0.85) | 10.52202/068431-1800 | NeurIPS 35, pp. 24824–24837 |

## Notes and minor discrepancies (none blocking)

1. **Wei et al. 2022** — the brief lists no DOI or arXiv ID. A DOI exists (10.52202/068431-1800, NeurIPS 2022 proceedings). Recommend adding it to the source list for completeness.
2. **Schick et al. 2023** — a NeurIPS proceedings DOI exists (10.52202/075280-2997); the brief cites arXiv:2302.04761, which is accurate. The proceedings version includes an additional author (Eric Hambro) not listed in the brief. arXiv citation is safe; if the proceedings version is cited instead, update the author list.
3. **OpenHands** — the arXiv DOI (10.48550/arXiv.2407.16741) resolves via Semantic Scholar under the old name "OpenDevin"; the brief already uses the correct current title. arXiv comments confirm ICLR 2025 acceptance and MIT license as the brief states.
4. **ScienceAgentBench** — arXiv abstract confirms ICLR 2025, 60 pages, 32.4%/34.3%/42.2% figures exactly as quoted in the brief.
5. **AI Scientist** — arXiv abstract confirms the under-US$15-per-paper cost claim and "near-human" automated reviewer phrasing.
6. The `verify_reference` tool returned `not_found`/`partial_match` for AutoGen, AI Scientist, and ReAct because they are arXiv preprints outside journal databases; this is a tooling limitation, not evidence against the references. Direct arXiv page checks resolved all three.

## Conclusion

All 49 references are real and correctly identified. No fabricated citations were found. The two minor completeness suggestions (adding DOIs for Wei et al. 2022 and optionally Schick et al. 2023) do not affect validity.