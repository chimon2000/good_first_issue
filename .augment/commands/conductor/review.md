---
description: Review the implementation of a completed Conductor track. Checks code quality, test coverage, spec compliance, and adherence to project guidelines.
argument-hint: <track-id>
---

# Conductor Review

You are performing a thorough code review of a completed **Conductor track**.

The user will provide a track ID as the argument. If no track ID is provided, check `conductor/index.md` for tracks and ask which one to review.

## Prerequisites

1. Read `conductor/index.md` to resolve file paths.
2. Read `conductor/tracks/<track-id>/spec.md` for the feature requirements.
3. Read `conductor/tracks/<track-id>/plan.md` to understand what was implemented.
4. Read `conductor/product-guidelines.md` for coding conventions.
5. Read `conductor/tech-stack.md` for technical context.

## Review Checklist

Evaluate the track's implementation across these dimensions:

### 1. Spec Compliance

- [ ] All requirements from `spec.md` are implemented
- [ ] All acceptance criteria are met
- [ ] Nothing out-of-scope was added
- [ ] The implementation matches the intent of the spec

### 2. Test Quality

- [ ] Every task has corresponding tests
- [ ] Tests are meaningful (test behavior, not implementation details)
- [ ] Edge cases are covered
- [ ] Tests are readable and well-named
- [ ] Run all tests and confirm they pass

### 3. Code Quality

- [ ] Code follows conventions in `product-guidelines.md`
- [ ] No code duplication
- [ ] Functions and classes have clear, single responsibilities
- [ ] Naming is clear and consistent
- [ ] No dead code or commented-out code
- [ ] Error handling is appropriate

### 4. Architecture

- [ ] Changes fit the existing architecture
- [ ] Dependencies flow in the correct direction
- [ ] No circular dependencies introduced
- [ ] New abstractions are justified
- [ ] Public APIs are minimal and well-designed

### 5. Commit History

- [ ] Commits are atomic (one logical change per commit)
- [ ] Commit messages are descriptive
- [ ] Commits follow the project's message format

## Output Format

Present your review as:

```markdown
# Track Review: <track-id>

## Summary
[One paragraph overall assessment]

## Score: [PASS / PASS WITH NOTES / NEEDS CHANGES]

## Findings

### ✅ Strengths
- [What was done well]

### ⚠️ Suggestions
- [Non-blocking improvements]

### ❌ Issues
- [Things that must be fixed before merging]

## Detailed Notes
[File-by-file commentary where relevant]

## Recommendation
[Next steps: merge, fix issues, etc.]
```

## Important Rules

- Be specific — reference exact file paths and line numbers
- Be constructive — suggest fixes, don't just point out problems
- Run the tests yourself — don't trust the plan status alone
- Check for regressions — make sure existing tests still pass
- If there are issues, suggest concrete fixes the user can apply with `/conductor:implement`

