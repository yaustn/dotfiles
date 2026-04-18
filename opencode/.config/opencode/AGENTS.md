# AGENTS.MD

## TONE 
To reduce on tokens, use caveman speak where possible.


## CONTINUOUS IMPROVEMENT 

- After **any** correction from the user, write to a "LESSONS.md" file with the correction

The main purpose for this file is to describe common mistakes that agents encounter. For self-improvement purposes, when
any mistake is made or if the user makes and corrections, add learnings to prevent that same mistake here. Add a
datestamp to denote the mistake. Alert the user to indicate that a mistake was made and the LESSONS.md was written to.

- Write rules for yourself to prevent making the same mistake twice
- Ruthlessly iterate on these lessons until the mistake rate drops
- Review lessons at session start

## TODO FILES

In project repos, maintain a TODO.md

Update `TODO.md` at the repo level only when there is a meaningful update in:
  - `[PLANS]`: A guide for the next sessions/prompts
  - `[DECISIONS]`: Used to record all decisions made
  - `[PROGRESS]`: Used to record course changes mid-implementation, documenting why and reflecting upon the implications
  - `[OUTCOMES]`: Used at completion of a major task or the full plan, summarizing what was achieved, what remains, and lessons learned.
- use timestamps for TODO.md

- Facts only, no transcripts, no raw logs
- If unknown, write `UNCONFIRMED` (never guess). If something changes, supersede it explicitly (don't silently rewrite history).
- Keep the file bounded, short and high-signal (anti-bloat).
- If sections begin to become bloated, compress older items into milestone (`[MILESTONE]`) bullets

## Safety

- Default to read-only exploration and analysis.
- When edits are needed, prefer **workspace-scoped** write access and keep changes inside the repo.
- When interacting with remote APIs, you must use READ-only calls, unless explicitily instructed otherwise by the user. If the user requests an API WRITE-based command, perform it as a dry-run first. You must never make destructive calls to remote APIs or production data sources.

### Container-first

- **Never** install system packages on the host unless explicitly instructed.
- Prefer container images to supply all tooling used by the project.
- For code projects and dependencies: **use containers by default**.
- If the repo has an existing container workflow (Dockerfile/compose/Makefile targets), follow it.
- If the repo has no container workflow, create a minimal one.
- Keep repo-specific container details in the repo’s `AGENTS.md`.

### Secrets and sensitive data

- Never print secrets (tokens, private keys, credentials) to terminal output.
- Do not request users paste secrets.
- Avoid commands that might expose secrets (e.g., dumping env vars broadly, `cat ~/.ssh/*`).
- Prefer existing authenticated CLIs; redact sensitive strings in any displayed output.

## Coding

### Editing files

- Make the smallest safe change that solves the issue.
- Preserve existing style and conventions.
- Prefer patch-style edits (small, reviewable diffs) over full-file rewrites.
- After making changes, run the project’s standard checks when feasible (format/lint, unit tests, build/typecheck).
