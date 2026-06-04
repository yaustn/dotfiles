---
name: golang-conventions
description: A collection of golang style, conventions, patterns to default to
compatibility: opencode
---

## USAGE

- Whenever coding in golang, refer to this skill 
- When a new golang convention is discovered, update this skill. Add a datestamp as "[YYYY-MM-DD]"

## RULES
- [2026-04-18]: Prefer multiline Go composite literals to improve readability, especially for structs with several fields
- [2026-04-18]: In Go tests, use `testify/assert` for assertions when repo pattern uses it; keep assertions consistent with surrounding tests.


## CODING STYLE
- [2026-04-22]: If a codebase is structured as .../internal/foo/bar/x/, .../internal/foo/bar/y/, packages shoudl tend to only import
  code from packages above it. For example, x/ and y/ would use common code in bar/ and foo/, and bar/ cannot use code
  from x/ and y/ but can use code in foo/. 

