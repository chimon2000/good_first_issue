---
description: Show the current state of all Conductor tracks and their task progress.
argument-hint: 
---

# Conductor Status

You are reporting the current state of all **Conductor tracks** in this project.

## Process

### Step 1: Read the Index

Read `conductor/index.md`. If it doesn't exist, tell the user to run `/conductor:setup` first and stop.

### Step 2: Enumerate Tracks

For each track listed in the index:
1. Read `conductor/tracks/<track-id>/plan.md`
2. Count tasks by status: not started, in progress, done
3. Read `conductor/tracks/<track-id>/spec.md` for the feature name

### Step 3: Present Status

Display a clear status report:

```markdown
# Conductor Status

## Project
[Project name from conductor/product.md]

## Tracks

### <track-id>: <Feature Name>
- **Progress**: 3/5 tasks done (60%)
- **Status**: in progress
- **Next task**: Task 4 — [description]

### <track-id>: <Feature Name>
- **Progress**: 5/5 tasks done (100%)
- **Status**: complete — ready for review

### <track-id>: <Feature Name>
- **Progress**: 0/4 tasks done (0%)
- **Status**: not started
- **Next task**: Task 1 — [description]

## Summary
- Total tracks: N
- Complete: N
- In progress: N
- Not started: N
```

### Step 4: Suggest Next Action

Based on the status, suggest the most logical next action:
- If a track is in progress → `/conductor:implement <track-id>`
- If a track is complete but unreviewed → `/conductor:review <track-id>`
- If all tracks are complete → suggest creating a new track or cleaning up
- If no tracks exist → `/conductor:new-track`

