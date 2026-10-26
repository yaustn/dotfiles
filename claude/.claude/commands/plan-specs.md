---
name: plan-specs
description: Figure out what to build next by having a conversation between AI and developer, ultimately outputting a
set of specs related to the conversation.
disable-model-invocation: true
---

With a blank context, this skill loads the context with prior specs and the codebase and asks questions about what to
build next. The result is a set of specs. Specs should be written to docs/specs.

# Process 

1. Explore the repo to understand the current state of the codebase, if you haven't already. Use the project's domain glossary vocabulary and style throughout. Read through specs to see what specs already exist.

2. Interview me relentlessly about every aspect about the what we're trying to build until we reach a shared understanding. Walk down each branch of the design tree, resolving dependencies between decisions one-by-one. For each question, provide a recommended answer. Ask questions one at a time. If a question can be answered by exploring the codebase or existing specs, explore that instead.

3. Once we have a shared understanding, sketch out the interfaces and boundaries at which you're going to test the feature. Existing interfaces should be preferred to new ones. If new interfaces are needed, propose them at the highest point you can. The fewer interfaces across the codebase, the better.

Check with the user that these interfaces match their expectations.

4. Finally, write the spec using the template below, then publish it to the specs folder. 

<spec-template>

## Problem Statement

The problem that the user is facing, from the user's perspective.

## Solution

The solution to the problem, from the user's perspective.

## User Stories

A LONG, numbered list of user stories. Each user story should be in the format of:

1. As an <actor>, I want a <feature>, so that <benefit>

<user-story-example>
1. As a mobile bank customer, I want to see balance on my accounts, so that I can make better informed decisions about my spending
</user-story-example>

This list of user stories should be extremely extensive and cover all aspects of the feature.

## Implementation Decisions

A list of implementation decisions that were made. This can include:

- The modules that will be built/modified
- The interfaces of those modules that will be modified
- Technical clarifications from the developer
- Architectural decisions
- Schema changes
- API contracts
- Specific interactions
- Code snippets (IFF it encodes a decision more precisely than writing can)

## Testing Decisions

A list of testing decisions that were made. Include:

- A description of what makes a good test (only test external behavior, not implementation details)
- Which modules will be tested
- Prior art for the tests (i.e. similar types of tests in the codebase)

## Out of Scope

A description of the things that are out of scope for this spec.

## Further Notes

Any further notes about the feature.

</spec-template>
