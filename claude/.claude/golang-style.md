---
name: golang-style
description: Defines personal Go practices and style that should be used when writing golang code.
---

# Golang Development Conventions
## Variable names
Prefer explicit naming instead of single character variable names.

```
account, err := handler.Service.Create(r.Context(), body.Name)
...
```

The only time single character variable names make sense is when describing std library variables higher up the call
stack. For instance:
```
func (handler *Handler) Create(w http.ResponseWriter, r *http.Request) {
...
```


## Interfaces

Interfaces should be defined where they are used, not where they are implemented.

## Avoid Scoped if Statements
Avoid using scoped if statements like:
```
if trimmed := strings.TrimSpace(str); trimmed != "" {
    ...
}
```

Instead prefer bespoke returns and if statements
```
trimmed := strings.TrimSpace(str)
if trimmed != "" {
    ...
}
```

### Inline error handling
Similarly, prefer bespoke error handling, never inlined error handling:
```
err := exampleFunction()
if err != nil {
    // handle err
}
```

# Testing

Test cases should be written as close to the following format as possible:
```
func TestHighLevelName(t *testing.T) {
    testCases := []struct{
        name string
        args ...
        expected ...
    } {
        {
            name: "sub testcase name"
            ...
        }
    }

    for tc := range testCases {
        t.Run(tc.name, func(t *testing.T) {
            actual := package.FunctionUnderTest(tc.args)
            assert.Equal(t, tc.expected, actual)
        })
    }
}
```
