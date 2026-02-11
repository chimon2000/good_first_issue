---
description: Revert the changes made by a specific Conductor track. Undoes commits and cleans up track state.
argument-hint: <track-id>
---

# Conductor Revert

You are reverting the changes made by a **Conductor track**.

The user will provide a track ID as the argument. If no track ID is provided, check `conductor/index.md` for tracks and ask which one to revert.

## Prerequisites

1. Read `conductor/index.md` to resolve file paths.
2. Read `conductor/tracks/<track-id>/plan.md` to understand what was implemented.
3. Check the git log for commits tagged with `Conductor: <track-id>`.

## Process

### Step 1: Identify Commits

Search the git log for commits containing `Conductor: <track-id>` in the commit message. List them in reverse chronological order (newest first).

Present the list to the user:

```
Found N commits for track <track-id>:

1. abc1234 — feat(auth): add login screen (Conductor: add-user-auth, Task 1)
2. def5678 — test(auth): add login tests (Conductor: add-user-auth, Task 1)
3. ...
```

### Step 2: Confirm with User

**Always ask for confirmation before reverting.** Show:
- The commits that will be reverted
- The files that will be affected
- Whether there are any commits AFTER the track's commits that might be affected

Warn the user if:
- There are newer commits that depend on the track's changes
- Other tracks reference files modified by this track
- The revert might cause test failures in other areas

### Step 3: Revert

If the user confirms:

1. **If commits are contiguous and at HEAD**: Use `git revert` for each commit in reverse order (newest first), or suggest an interactive rebase if cleaner.
2. **If commits are interleaved with other work**: Use `git revert` for each individual commit, handling conflicts as they arise.
3. **If conflicts arise**: Stop and present the conflict to the user for resolution.

### Step 4: Update Track State

After successful revert:

1. Update all task statuses in `conductor/tracks/<track-id>/plan.md` back to "not started".
2. Optionally, ask the user if they want to:
   - Keep the track (for re-implementation later)
   - Delete the track directory entirely
   - Archive the track (rename to `conductor/tracks/_archived/<track-id>/`)

### Step 5: Update Index

If the track was deleted, remove it from `conductor/index.md`.

## Critical Rules

1. **Never revert without user confirmation** — Always show what will be reverted first.
2. **Handle conflicts carefully** — If a revert causes merge conflicts, stop and explain rather than auto-resolving.
3. **Check for dependencies** — Warn if other tracks depend on this track's changes.
4. **Preserve history** — Use `git revert` (not `git reset`) to maintain a clean history.
5. **Run tests after revert** — Confirm the codebase is in a good state after reverting.

