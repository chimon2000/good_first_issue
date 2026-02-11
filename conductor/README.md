# Conductor Workflow System

Welcome to the Conductor workflow system for Good First Issue!

## What is Conductor?

Conductor is a structured approach to feature development that helps you:
- **Plan** features with clear context and steps
- **Track** progress through implementation
- **Maintain** consistency with project guidelines
- **Navigate** the codebase efficiently

## Quick Start

### 1. Start a New Feature

```
/conductor:new-track
```

The AI will interview you about your feature, analyze the codebase, and generate a structured track file with:
- Clear goals and context
- Step-by-step implementation plan
- Files you'll need to modify
- Testing requirements

### 2. Work Through Your Track

Open your track file in `conductor/tracks/` and work through the steps. The AI will:
- Guide you through each step
- Suggest code changes
- Help you write tests (TDD approach)
- Keep you aligned with project conventions

### 3. Complete and Archive

When done:
- Mark all steps complete
- Ensure tests pass
- Submit PR following guidelines
- Archive or delete the track

## Core Files

- **`index.md`** — Master file location map (the "phone book" for your codebase)
- **`product.md`** — What the app does and who uses it
- **`tech-stack.md`** — Technologies, tools, and build commands
- **`product-guidelines.md`** — Coding conventions, testing, and PR process
- **`tracks/`** — Active feature tracks

## How It Works

### The Index (File Resolution Protocol)

`conductor/index.md` is the most important file. It maps every concern in your project to specific files:
- Need to add a new page? Check the index for `lib/ui/pages/`
- Need to modify auth? Check the index for authentication flow
- Need to add a dependency? Check the index for `pubspec.yaml`

The AI uses this index to navigate your codebase efficiently.

### Feature Tracks

Tracks are structured workflows for implementing changes. Each track:
1. **Analyzes** the codebase to understand current state
2. **Plans** the implementation with clear steps
3. **Guides** you through TDD (test-first) development
4. **Ensures** consistency with project guidelines

### Integration with Existing Docs

Conductor complements your existing `AGENTS.md`:
- **AGENTS.md** — Deep technical architecture and flows
- **Conductor** — Practical workflow and file navigation

Both work together to give the AI complete context.

## Best Practices

### Before Starting Work
1. Review `conductor/index.md` to find relevant files
2. Check `conductor/product-guidelines.md` for conventions
3. Create a track with `/conductor:new-track`

### During Development
1. Follow TDD: write tests first
2. Check off steps in your track as you complete them
3. Run `flutter analyze` and `flutter test` frequently
4. Reference your track file to stay focused

### Before Submitting PR
1. Ensure all track steps are complete
2. All tests pass (`flutter test`)
3. Static analysis passes (`flutter analyze`)
4. PR description references the track and issue number
5. Include screenshots for UI changes

## Commands

- **`/conductor:new-track`** — Create a new feature track
- **`/conductor:update-index`** — Update the index after major refactoring
- **`/conductor:review-track`** — Review progress on current track

## Example Workflow

```
You: "I want to add a feature to filter issues by programming language"

AI: "Let me create a track for that..."
    [Creates conductor/tracks/filter-by-language.md]
    
AI: "I've created a track with 8 steps. Let's start with step 1: writing tests.
     Based on the index, we'll need to modify:
     - lib/ui/widgets/search_panel.dart
     - lib/ui/stores/issue_store.dart
     - lib/models/projects.dart
     
     Should we start by writing a test for the language filter?"

You: "Yes, let's write the test first"

AI: [Guides you through TDD implementation, checking off steps in the track]
```

## Why Conductor?

Traditional development:
- "Where should this code go?"
- "What files do I need to change?"
- "Did I forget anything?"
- "What are the testing requirements?"

With Conductor:
- ✅ Clear file locations via the index
- ✅ Structured implementation plan
- ✅ TDD workflow built-in
- ✅ Consistency with project guidelines
- ✅ Nothing forgotten

## Getting Help

If you're stuck:
1. Check `conductor/index.md` for file locations
2. Review `conductor/product-guidelines.md` for conventions
3. Look at `AGENTS.md` for architecture details
4. Ask the AI to review your track progress

---

**Ready to start?** Run `/conductor:new-track` to begin your first feature!

