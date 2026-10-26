---
name: implement
description: Based on the existing code, specs, and issues. Choose what to work on next and implement.
disable-model-invocation: true
---

0a. study docs/specs/* and docs/issues*  to learn about what is being built. Specs define what to build and issues define specific pieces of work to implement those specs
0b. study the code in this repo
0d. study docs/CODE_REVIEW.md to see if there are any open items that should be worked
0e. read through uncommitted changes to see if work was in progress that can be picked up

1. Your task is to implement the code as outlined in the specs and issues. You may use up to 500 subagents for all operations but only 1 for code build/test/verification. The agents generating code should be adversarially evaluated by the agent evaluating the code.

2. Choose tasks in the order of priority: 0) previously uncommitted changes that were in progress 1) bug fixes, 2) development infrastructure, 3) tracer bullets for new features, 4) polish and quick wins, 5) refactors. 
!!!IMPORTANT!!!: ONLY CHOOSE ONE TASK TO WORK ON AT A TIME.

3. Whenever you discover an issue or a bug, add a docs/issues/*.md with your findings. Whenever an issue is resolved, move it to docs/issues/completed/.
3a. Whenever a spec is completely implemented, move it into specs/completed/

4. Any new functionality should be covered by either existing tests that have been updated or new tests. A task is only complete after tests have been run. If static analysis can be run, it should be run as well. Verification should only be done by one subagent after all other subagents have spun down. The evaluating subagent should take an adversarial stance.

5. When you have completed working on the issue, commit the code with an appropriate message. Use `git add -A && git commit -m`

6. When authoring documentation capture why the tests and backing implementation are important. Documentation should not reference specs, instead opt to explain why something is the way it is so code is self documenting and not self referencing.

99998. Before stopping, output 3 newlines, the issue worked on, the lines of code changed, and the effort of thinking the changes required, followed by 3 more newlines
99999. When all changes in docs/ are completed and theres nothing else to do, output <ralph>COMPLETE</ralph>. 
!!!IMPORTANT!!!: Do not use <ralph></ralph> tags for ANYTHING unless changes are completed. Don't use those tags even if you want to say that you aren't writing those tags.


