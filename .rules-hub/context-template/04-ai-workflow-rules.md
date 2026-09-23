# AI Workflow Rules & Discipline

## 1. Single-Unit Execution
- Work on strictly **ONE Feature Spec** at a time (e.g., `context/feature-specs/01-design-system.md`).
- Do not combine multiple unrelated features or system layers into a single implementation step.
- Do not modify files outside the explicit scope of the current feature spec.

## 2. Spec-Driven Loop
1. **Read**: Load and inspect the target feature spec.
2. **Track**: Update `06-progress-tracker.md` marking the unit as `[IN-PROGRESS]`.
3. **Execute**: Implement the code strictly according to the spec and architecture invariants.
4. **Verify**: Test against the spec's acceptance checklist and ensure zero TypeScript / lint errors.
5. **Complete**: Update `06-progress-tracker.md` to `[COMPLETED]` and document any architectural decisions in the ADR log.

## 3. Ambiguity & Decisions
- If a requirement or architecture decision is ambiguous, **STOP and ask the user** instead of guessing or introducing unauthorized dependencies.
