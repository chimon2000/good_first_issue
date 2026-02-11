---
name: conductor-workflow
description: Provides the Conductor development methodology as passive context — track-based feature development with TDD, atomic commits, and structured planning via the conductor/ directory.
---

# Conductor Workflow

Conductor is a structured development methodology that organizes work into **tracks** — isolated units of feature development with specifications, plans, and task-level progress tracking.

## Core Principles

1. **Plan before you code** — Every feature starts with a spec and an implementation plan before any code is written.
2. **Test-Driven Development** — Write tests first (red), implement minimally (green), then refactor. No exceptions.
3. **Atomic commits** — Each task produces exactly one commit with a descriptive message.
4. **Track isolation** — Each track is an independent unit of work. Changes stay scoped to the track's plan.

## File Resolution Protocol

The `conductor/index.md` file is the **master manifest** for the project. Always read it first to understand where things live.

### Directory Structure

```
conductor/
├── index.md              # File resolution protocol — read this FIRST
├── product.md            # What the product does, who uses it
├── tech-stack.md         # Languages, frameworks, dependencies, build commands
├── product-guidelines.md # Coding conventions, commit format, testing rules
└── tracks/
    └── <track-id>/
        ├── spec.md       # Feature specification with requirements and acceptance criteria
        └── plan.md       # Implementation plan with ordered, discrete tasks
```

### When to Read What

- **Starting any work**: Read `conductor/index.md` first
- **Understanding the product**: Read `conductor/product.md`
- **Technical decisions**: Read `conductor/tech-stack.md`
- **Code style questions**: Read `conductor/product-guidelines.md`
- **Feature context**: Read the relevant `conductor/tracks/<track-id>/spec.md`
- **What to do next**: Read the relevant `conductor/tracks/<track-id>/plan.md`

## TDD Workflow

For every task in a track plan:

1. **Red** — Write a failing test that defines the expected behavior
2. **Green** — Write the minimum code to pass the test
3. **Refactor** — Clean up while keeping tests green
4. **Commit** — One atomic commit per task

## Commit Format

```
<type>(<scope>): <description>

[optional body]

Conductor: <track-id>, Task <N>
```

**Types**: `feat`, `fix`, `refactor`, `test`, `docs`, `chore`

The `Conductor:` trailer enables track-level operations like status reporting and reverting.

## Task States

Tasks in `plan.md` have one of these statuses:
- **not started** — Work has not begun
- **in progress** — Currently being worked on
- **done** — Completed and committed

## Available Commands

- `/conductor:setup` — Initialize Conductor for a project
- `/conductor:new-track <feature>` — Create a new track with spec and plan
- `/conductor:implement <track-id>` — Execute tasks from a track plan using TDD
- `/conductor:review <track-id>` — Review a completed track's implementation
- `/conductor:status` — Show progress across all tracks
- `/conductor:revert <track-id>` — Revert a track's changes

## Style Conventions

When working within the Conductor workflow:
- Keep specs concise and requirement-focused — no prose padding
- Plans should have 3-10 tasks; split larger work into multiple tracks
- Task descriptions should be specific enough that another developer could execute them
- Always update `plan.md` task statuses after completing work
- Always update `conductor/index.md` when adding or removing tracks

