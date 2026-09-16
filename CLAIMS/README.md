# CLAIMS/

This directory holds active coordination claims, one subdirectory per claimed
file path. See `AGENTS.md` at the repo root for the full protocol.

**Why this directory is git-ignored:** claims change constantly while agents
work. If they were tracked, every parallel agent's `git status` would be noisy
and merges would fight over claim state. The claims here are runtime state only;
the durable coordination contract lives in `AGENTS.md`, which is committed.

Each claim is a directory whose name encodes the claimed path (`/` becomes
`--`, e.g. `analysis/paper/paper.qmd` -> `analysis--paper--paper.qmd`) and
contains a `claim.txt` with `claimed_by`, `task`, `claimed_at`, and
`done_status`. Take a claim with `mkdir` (atomic), release by deleting the
directory.

`.gitkeep` keeps the directory present in fresh checkouts.