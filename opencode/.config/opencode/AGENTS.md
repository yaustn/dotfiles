# AGENTS.MD

## Meta Files

Use these files within the working directory for relevant state. Create them if they don't exist on first write. Review
these files whenever tasks are started and whenever tasks are completed. These are living, breathing documents.

- "TODO.md": For continuity. Write at the repo level. When a task is completed add documentation about the progress made on that task here. If there are follow-ups from that task, add that here as well

Update `TODO.md` only when there is a meaningful delta in:
  - `[PLANS]`: A guide for the next contributor as much as checklists for you
  - `[DECISIONS]`: Used to record all decisions made.
  - `[PROGRESS]`: Used to record course changes mid-implementation, documenting why and reflecting upon the implications.
  - `[OUTCOMES]`: Used at completion of a major task or the full plan, summarizing what was achieved, what remains, and lessons learned.

- "LESSONS.md": For self-improvement. Write at the global level. When mistakes are made, add learnings to prevent the same mistake here

Make sure to read through all Meta Files at the start of each new session.

### Anti-drift / anti-bloat rules

- Facts only, no transcripts, no raw logs
- Every entry must include:
  - a date in `YYYY-MM-DD` format (e.g., `[2026-01-13]`)
  - If unknown, write `UNCONFIRMED` (never guess). If something changes, supersede it explicitly (don't silently rewrite history).
- Keep the file bounded, short and high-signal (anti-bloat).
- If sections begin to become bloated, compress older items into milestone (`[MILESTONE]`) bullets

## Workflow

- Start every task in plan mode
- Determine:
  1. Goal + acceptance criteria
  2. Constraints (time, safety, scope)
  3. What must be inspected (files, commands, tests, docs)
  4. Whether the request depends on **external data sourcing** (ie: recency, web searches, MCPs)
    - If it does, refer to the "External data sourcing" section
  5. If requirements are ambiguous, ask targeted clarifying questions before making irreversible changes.
- Verify plan and track progress as work starts. Explain at a high-level as progress is made
- Document results and any follow-up work in a "TODO.md" file.

### Definition of done

A task is done when:

- the requested change is implemented or the question is answered,
  - verification is provided:
  - build attempted (when source code changed),
  - linting run (when source code changed),
  - errors/warnings addressed (or explicitly listed and agreed as out-of-scope),
  - tests/typecheck as applicable,
- documentation is updated exhaustively for impacted areas,
- impact is explained (what changed, where, why),
- follow-ups are listed if anything was intentionally left out

### Self-Improvement

- After **any** correction from the user, write to a "LESSONS.md" file with the correction
- Write rules for yourself to prevent making the same mistake twice
- Ruthlessly iterate on these lessons until the mistake rate drops
- Review lessons at session start

## External data sourcing

### Recency

When a request depends on recency (e.g., "latest", "current", "today", "as of now"):

1. **Establish the current date/time** and state it explicitly in ISO format
   - Preferred: `date -Is` (timestamp)

2. **Prefer official / primary sources** when researching:
   - Upstream vendor docs for any dependency (language runtime, framework, cloud provider, etc.)

3. **Prefer the most recent authoritative information**:
   - Use the newest versioned docs, release notes, or changelogs
   - Cross-check at least two reputable sources when details are safety/compatibility sensitive

### Web search policy

- Enable and use web search only when it materially improves correctness (e.g., up-to-date APIs, recent advisories, release notes).
- Prefer official docs and primary sources; otherwise use MCPs (Context7, may not be installed yet) or reputable, widely-cited references.
- Record source dates (publish/release dates) when relevant.

### Reading project documents (PDFs, uploads, long text, CSVs, etc)

- Read the full document first.
- Draft the output.
- **Before finalizing**, re-read the original source to verify:
  - factual accuracy,
  - no invented details,
  - wording/style is preserved unless the user explicitly asked to rewrite.
- If paraphrasing is required, label it explicitly as a paraphrase.

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
