---
description: Create a new Conductor track for a feature or task. Generates a spec and implementation plan with discrete, testable tasks.
argument-hint: <feature-description>
---

# Conductor New Track

You are creating a new **Conductor track** — an isolated unit of work with a specification and implementation plan.

The user will provide a feature description as the argument to this command. If no description is provided, ask for one.

## Prerequisites

First, read `conductor/index.md` to understand the project structure. If `conductor/index.md` does not exist, tell the user to run `/conductor:setup` first and stop.

Also read:
- `conductor/product.md` — to understand the product context
- `conductor/tech-stack.md` — to understand technical constraints
- `conductor/product-guidelines.md` — to understand coding conventions

## Process

### Step 1: Generate Track ID

Create a short, descriptive, kebab-case track ID from the feature description. Examples:
- "Add user authentication" → `add-user-auth`
- "Fix pagination bug on search results" → `fix-search-pagination`
- "Refactor database connection pooling" → `refactor-db-pooling`

### Step 2: Create Track Directory

Create `conductor/tracks/<track-id>/` with two files:

#### `conductor/tracks/<track-id>/spec.md`

The feature specification:

```markdown
# <Feature Name>

## Track ID
<track-id>

## Description
[Clear, concise description of what this feature/fix/refactor does]

## Requirements
- [Specific, testable requirement 1]
- [Specific, testable requirement 2]
- ...

## Acceptance Criteria
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- ...

## Out of Scope
- [What this track explicitly does NOT cover]

## Technical Notes
[Any relevant technical context, constraints, or decisions]
```

#### `conductor/tracks/<track-id>/plan.md`

The implementation plan with discrete tasks:

```markdown
# Implementation Plan: <Feature Name>

## Track ID
<track-id>

## Tasks

### Task 1: [Short description]
- **Status**: not started
- **Files**: [files to create or modify]
- **Description**: [What to do, including test expectations]
- **Tests**: [Specific tests to write]

### Task 2: [Short description]
- **Status**: not started
- **Files**: [files to create or modify]
- **Description**: [What to do]
- **Tests**: [Specific tests to write]

...
```

### Step 3: Plan Quality Rules

Each task in the plan MUST:
- Be small enough to complete in a single focused session
- Have a clear definition of done
- List specific files to create or modify
- Include specific tests to write (TDD — tests come first)
- Be ordered so that dependencies are resolved (earlier tasks don't depend on later ones)

The plan SHOULD:
- Start with the data/model layer, then services, then UI
- Front-load tests — each task writes tests before implementation
- Include an integration/verification task at the end
- Have 3-10 tasks (if more, split into multiple tracks)

### Step 4: Update Index

Add the new track to `conductor/index.md` under the Tracks section:

```markdown
## Tracks
- <track-id>: conductor/tracks/<track-id>/ — [one-line description]
```

### Step 5: Confirm

Present the spec and plan to the user for review. Ask if any tasks need to be adjusted, reordered, or split. Suggest running `/conductor:implement <track-id>` to begin implementation.

