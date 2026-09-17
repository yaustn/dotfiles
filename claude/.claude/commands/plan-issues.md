---
name: plan-issues
description: Break a spec into a set of tracer-bullet issues, each declaring its blocking edges.
disable-model-invocation: true
---

Cross reference existing issues at docs/issues with docs/specs and break down specs that have not been converted into as a set of issues. Each issue is a tracer-bullet vertical slice, each declaring the issues that block it. Ultimately we are looking to identify and formalize what we should work on next.

# Process

## 1. Gather context

Work from whatever is already in the conversation context. If the user passes a reference (a spec path, an issue path, etc.) as an argument, fetch it and read its full body and comments. Consume docs/* (specs and existing issues). Ignore archived specs and issues.

## 2. Explore the codebase

If you have not already explored the codebase, do so to understand the current state of the code. Ticket titles and descriptions should use the project's domain glossary vocabulary.

Look for opportunities to prefactor the code to make the implementation easier. "Make the change easy, then make the easy change." Prefactoring should be its own prerequisite issue.

## 3. Draft vertical slices

Break the work into tracer bullet, vertical sliced pieces of work.

<vertical-slice-rules>

- Each slice cuts a narrow but COMPLETE path through every layer (schema, API, UI, tests): vertical, NOT a horizontal slice of one layer
- A completed slice is demoable or verifiable on its own
- Each slice is sized to fit in a single fresh context window
- Any prefactoring should be done first

</vertical-slice-rules>

Give each ticket its blocking edges: the other issues that must complete before it can start. A ticket with no blockers can start immediately.

**Wide refactors are the exception to vertical slicing.** A **wide refactor** is one mechanical change (rename a column, retype a shared symbol) whose **blast radius** fans across the whole codebase, so a single edit breaks thousands of call sites at once and no vertical slice can land green. Don't force it into a tracer bullet; sequence it as **expand–contract**. First expand: add the new form beside the old so nothing breaks. Then migrate the call sites over in batches sized by blast radius (per package, per directory), each batch should have its own issue blocked by the expand. Tests should remain green batch to batch because the old form still exists. Finally contract: delete the old form once no caller remains, in a ticket blocked by every migrate batch. Finally add a integrate-and-verify issue for the last remaining work to clean-up green is promised only there.

## 4. Confirm with the user

Present the proposed breakdown as a numbered list. For each issue, show:

- **Title**: short descriptive name
- **Blocked by**: which other issue (if any) must complete first
- **What it delivers**: the end-to-end behaviour this ticket makes work

Ask the user:

- Does the granularity feel right? (too coarse / too fine)
- Are the blocking edges correct: does each issue only depend on issue that genuinely gate it?
- Should any issue be merged or split further?

Iterate until the user approves the breakdown.

## 5. Write the issues

Publish the approved issues to a docs/issues/* directory. One file per issue, following the numbered order that already
exists. Respec the number ordering of even archived issues.

Use the following template to write issues:

<local-issue-template>

# <NN>: <Issue title>

**What to build:** the end-to-end behaviour this issue makes work, from the user's perspective, not a layer-by-layer implementation list.

**Blocked by:** the numbers/titles of the issues that gate this one, or "None (can start immediately)".

**Status:** ready-for-agent

- [ ] Acceptance criterion 1
- [ ] Acceptance criterion 2

</local-issue-template>

### Additionally
Avoid specific file paths or code snippets: they go stale fast. Exception: if a prototype produced a snippet that encodes a decision more precisely than prose can (state machine, reducer, schema, type shape), inline it and note briefly that it came from a prototype. Trim to the decision-rich parts, not a working demo, just the important bits.

