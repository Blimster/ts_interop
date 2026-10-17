# AGENTS

## Purpose
This repository generates Dart JavaScript interop types from TypeScript declaration AST input.

Primary objective for all changes:
- Preserve correct generated output.
- Keep transformations deterministic.
- Avoid breaking sanitizer and transpiler assumptions.

## Project Pipeline
1. Parse TypeScript AST JSON into `TsNode` tree.
2. Sanitize tree using mapper phases.
3. Transpile `TsNode` tree to `DartNode` structures.
4. Emit Dart source code.

Key areas:
- `bin/`: CLI entry point.
- `lib/src/generator/`: generation orchestration and config.
- `lib/src/sanitizer/` and `lib/src/mapper/`: transform phases.
- `lib/src/transpiler/`: type evaluation and transpilation.
- `lib/src/model/`: AST models.

## Non-Negotiable Rules
1. Do not reorder sanitizer phases unless explicitly requested.
2. Keep mapper behavior stable and idempotent where possible.
3. Do not silently rename generated public API.
4. Prefer narrow, local edits over broad refactors.
5. Preserve existing lint and formatting conventions.

## Domain Invariants
1. Type literals are represented as `JSObject` unless an intentional new mapping is introduced.
2. Value/type name collisions must remain resolvable.
3. Type argument normalization must not lose semantic meaning.
4. Generated interop should remain compatible with current Dart JS interop constraints.

## Change Policy
When editing sanitizer or transpiler logic:
1. State which invariant is affected.
2. Identify mapper/evaluator branches changed.
3. Add or update a focused validation scenario.
4. Describe expected before/after output behavior.

When adding a mapper:
1. Keep the mapper scope narrow and explicit.
2. Register it only in the intended phase group.
3. Document why phase ordering is correct.
4. Avoid introducing cross-cutting behavior in unrelated mappers.

## Validation Checklist
Run after non-trivial changes:
1. `dart analyze`
2. `dart format . --set-exit-if-changed`
3. Run a local `tsigen` smoke test with representative input and verify generated output compiles.

If generation behavior changes:
1. Capture a minimal input sample that reproduces the behavior.
2. Compare generated output before/after.
3. Record the behavior change in PR notes or changelog.

## Safety Boundaries
1. Never add secrets or credentials.
2. Do not change version/release metadata unless requested.
3. Do not change public CLI flags/defaults unless requested.
4. Do not remove existing mapper phases without migration notes.

## PR Expectations
For non-trivial changes, include:
1. What changed.
2. Why it changed.
3. Which pipeline stage was affected.
4. How it was validated.
5. Known risks or follow-up work.