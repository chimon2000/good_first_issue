# Feature Tracks

This directory contains **feature tracks** — structured workflows for implementing features, fixes, and improvements.

## What is a Track?

A track is a markdown file that guides you through implementing a specific feature or change. Each track contains:

- **Goal**: What you're trying to accomplish
- **Context**: Relevant background and constraints
- **Steps**: Ordered checklist of tasks
- **Files**: Key files involved in the change
- **Tests**: Testing requirements and approach

## Creating a New Track

Use the `/conductor:new-track` command to create a new track. The AI will:
1. Ask about your feature/change
2. Analyze the codebase
3. Generate a structured track file
4. Guide you through implementation

## Track Lifecycle

1. **Create** — Generate track with `/conductor:new-track`
2. **Execute** — Work through steps, checking them off as you go
3. **Test** — Verify with tests (TDD approach)
4. **Review** — PR review and approval
5. **Archive** — Move completed tracks to `tracks/archive/` or delete them

## Example Track Structure

```markdown
# Feature: Add Issue Filtering by Label

**Status**: In Progress
**Created**: 2026-02-11
**Owner**: @username

## Goal
Allow users to filter issues by additional labels beyond "good first issue"

## Context
- Currently only shows "good first issue" labeled items
- Users want to filter by language, difficulty, etc.
- GraphQL query needs to support multiple labels

## Steps
- [ ] Update GraphQL query in packages/github_api/
- [ ] Add label filter UI to search_panel.dart
- [ ] Update IssueStore to handle label filters
- [ ] Write tests for label filtering
- [ ] Update projects.dart with label options
- [ ] Test on iOS and Android

## Files Involved
- packages/github_api/lib/queries/issues.graphql
- lib/ui/widgets/search_panel.dart
- lib/ui/stores/issue_store.dart
- lib/models/projects.dart
- test/services/issue_test.dart

## Testing
- Unit tests for label filter logic
- Widget tests for search panel
- Integration test for full filter flow
```

## Tips

- Keep tracks focused on a single feature or fix
- Break large features into multiple tracks
- Reference issue numbers in track files
- Update track status as you progress
- Archive or delete completed tracks

