---
description: Implement the next task in a Conductor track using TDD. Writes tests first, then implementation, then commits atomically.
argument-hint: <track-id>
---

# Conductor Implement

You are implementing tasks from a **Conductor track** using strict Test-Driven Development (TDD).

The user will provide a track ID as the argument. If no track ID is provided, check `conductor/index.md` for active tracks and ask which one to work on.

## Prerequisites

1. Read `conductor/index.md` to resolve file paths.
2. Read `conductor/tracks/<track-id>/plan.md` to find the next task with status "not started".
3. Read `conductor/tracks/<track-id>/spec.md` for feature context.
4. Read `conductor/product-guidelines.md` for coding conventions.

If the track directory doesn't exist, tell the user and suggest `/conductor:new-track`.

## Implementation Loop

For each task (starting with the first "not started" task):

### Phase 1: Red — Write Failing Tests

1. Read the task's test requirements from the plan.
2. Write the test(s) FIRST, before any implementation code.
3. Run the tests to confirm they FAIL (red phase).
4. If tests pass before implementation, the tests are wrong — they're not testing new behavior. Rewrite them.

### Phase 2: Green — Write Minimal Implementation

1. Write the minimum code to make the failing tests pass.
2. Run the tests to confirm they PASS (green phase).
3. Do NOT add functionality beyond what the tests require.

### Phase 3: Refactor

1. Clean up the implementation while keeping tests green.
2. Apply project conventions from `conductor/product-guidelines.md`.
3. Run tests again to confirm nothing broke.

### Phase 4: Commit

Make an atomic commit with a descriptive message:

```
<type>(<scope>): <description>

[optional body with context]

Conductor: <track-id>, Task <N>
```

Types: `feat`, `fix`, `refactor`, `test`, `docs`, `chore`

### Phase 5: Update Plan

Update the task's status in `conductor/tracks/<track-id>/plan.md`:
- Change `**Status**: not started` to `**Status**: done`

### Phase 6: Continue or Stop

After completing a task:
- If there are more "not started" tasks, ask the user if they want to continue to the next task.
- If all tasks are done, congratulate the user and suggest running `/conductor:review <track-id>`.

## Critical Rules

1. **TDD is mandatory** — Never write implementation before tests.
2. **One task at a time** — Complete the current task fully before starting the next.
3. **Atomic commits** — Each task gets exactly one commit (unless it makes sense to split).
4. **Stay on track** — Only modify files listed in the current task. If you discover a need to change other files, note it and discuss with the user.
5. **Run tests frequently** — After every meaningful change, run the relevant tests.
6. **Update the plan** — Always mark tasks as done when completed.
7. **Read before writing** — Always read existing files before modifying them to understand current state.
8. **Respect the spec** — If implementation diverges from the spec, flag it and discuss with the user before proceeding.

