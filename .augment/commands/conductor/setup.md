---
description: Initialize the Conductor workflow system for this project. Generates the conductor/ directory with product description, tech stack, coding guidelines, and file resolution index.
argument-hint: 
---

# Conductor Setup

You are initializing the **Conductor** workflow system for this project. Your goal is to create the `conductor/` directory with all foundational files through an interactive conversation with the developer.

## Process

### Step 1: Check for Existing Setup

First, check if a `conductor/` directory already exists in the project root. If it does, inform the user and ask if they want to reinitialize (which will overwrite existing files) or abort.

### Step 2: Analyze the Project

Before asking questions, analyze the existing codebase:
- Read key configuration files (pubspec.yaml, package.json, Cargo.toml, go.mod, etc.)
- Scan the directory structure
- Identify the tech stack, frameworks, and patterns already in use
- Look for existing documentation (README.md, AGENTS.md, CLAUDE.md, etc.)

Present your findings to the user as a starting point.

### Step 3: Interactive Interview

Ask the user focused questions to fill in gaps. Cover:

1. **Product Description** — What does this product do? Who are the users? What problem does it solve?
2. **Tech Stack** — Confirm what you detected. Ask about anything ambiguous (e.g., state management approach, testing framework preferences, deployment targets).
3. **Coding Guidelines** — What conventions does the team follow? (naming, file organization, commit message format, PR process, code review standards)

Keep questions concise. Use what you already know from the codebase to propose defaults the user can confirm or override.

### Step 4: Generate Files

Create the following files in `conductor/`:

#### `conductor/product.md`
A clear, concise description of the product including:
- What it does
- Who uses it
- Key features and capabilities
- Business context (if provided)

#### `conductor/tech-stack.md`
A comprehensive listing of:
- Languages and frameworks
- Key dependencies and their roles
- Build tools and commands
- Testing frameworks and approaches
- Deployment and CI/CD setup

#### `conductor/product-guidelines.md`
Coding and product conventions including:
- Code style and naming conventions
- File and directory organization rules
- Commit message format
- Testing requirements and coverage expectations
- PR and code review process
- Any project-specific rules or constraints

#### `conductor/index.md`
The **file resolution protocol** — the master manifest that maps project concerns to file locations. This is the most critical file. It should contain:

```markdown
# Project Index

## Conductor Files
- Product description: conductor/product.md
- Tech stack: conductor/tech-stack.md
- Guidelines: conductor/product-guidelines.md
- Tracks: conductor/tracks/

## Source Code
[Map key source directories and files with brief descriptions]

## Tests
[Map test directories and files]

## Configuration
[Map config files: CI, build, deployment, etc.]
```

The index should be specific to THIS project — map the actual files and directories that exist, not generic placeholders.

### Step 5: Confirm

After generating all files, present a summary of what was created and ask the user to review. Suggest running `/conductor:new-track` to start their first feature track.

## Important Rules

- Always read existing project files before asking questions — don't make the user repeat what's already documented
- The `conductor/index.md` must reflect the REAL project structure, not a template
- Keep all generated files concise and actionable — no filler content
- If the project already has an AGENTS.md, CLAUDE.md, or similar, incorporate that information rather than duplicating it

