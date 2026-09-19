---
name: python-style
description: Defines personal Python practices and style that should be used when writing python code.
---

# Python Development Conventions

## Test package structure

Tests should be written to a separate top-level tests folder. Additionally, the test directory structure should mirror the applications directory structure, particularly for unit tests. For example:
```
app/
  api/
    api.py
  common/
    logging/
  ...
tests/
  api/
    test_api.py
  common/
    logging/
  ...
  e2e/
```

