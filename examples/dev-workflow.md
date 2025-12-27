# Development Workflow with Codex CLI

This guide demonstrates how to integrate Codex CLI into your daily development
workflow for maximum productivity.

## Daily Workflow Example

### 1. Morning Setup

```bash
# Start your day by launching Codex
codex

# Initialize project context if it's your first time
/init

# Review today's tasks
What tasks should I focus on today based on the project status?
```

### 2. Feature Development

#### Planning Phase

```text
# Use Kiro skill for structured feature planning
$kiro-skill Create a user profile editing feature

# Or use a custom prompt for quick planning
/prompts:github-issue-fixer 123
```

#### Implementation Phase

```text
# Ask for implementation guidance
How should I implement the password validation logic?

# Get code reviews as you work
Review this authentication function for security issues

# Generate tests
Create unit tests for the UserService class
```

#### Testing Phase

```text
# Run tests through Codex
Can you run the test suite and explain any failures?

# Debug failing tests
The login test is failing, help me debug it

# Performance analysis
Profile this database query and suggest optimizations
```

### 3. Code Review

```text
# Review your own changes before committing
Review my recent changes for code quality and best practices

# Use PR reviewer prompt
/prompts:github-pr-reviewer 456

# Check for security issues
Analyze my changes for potential security vulnerabilities
```

### 4. Documentation

```text
# Generate documentation
Create API documentation for the UserController

# Update README
Help me update the README with the new features

# Document complex logic
Explain this algorithm and add inline comments
```

### 5. End-of-Day Reflection

```text
# Use deep reflector to capture learnings
/prompts:deep-reflector

# Save important insights
/prompts:insight-documenter Today's authentication breakthrough
```

## Common Workflows

### Bug Fix Workflow

```text
1. Investigate the issue
   "Analyze this error stack trace and suggest possible causes"

2. Locate the problem
   "Search the codebase for where UserToken is validated"

3. Propose solution
   "What's the best way to fix this authentication bug?"

4. Implement fix
   "Help me implement the fix with proper error handling"

5. Test the fix
   "Create a test case that reproduces and verifies the fix"

6. Document the fix
   "Update the CHANGELOG with this bug fix"
```

### Refactoring Workflow

```text
1. Analyze current code
   "Review this module for refactoring opportunities"

2. Plan refactoring
   "Create a step-by-step plan to refactor this code"

3. Execute refactoring
   "Help me extract this logic into a separate service"

4. Verify functionality
   "Ensure tests still pass after refactoring"

5. Update documentation
   "Update docs to reflect the new architecture"
```

### New Feature Workflow

```text
1. Requirements gathering
   $kiro-skill Create feature spec for [feature name]

2. Design review
   "Review this design for potential issues"

3. Implementation planning
   "Break down this feature into implementable tasks"

4. Incremental development
   "Let's implement task 1: [task description]"

5. Integration
   "Help me integrate this feature with existing code"

6. Documentation
   "Create user documentation for this feature"
```

## Productivity Tips

### Use Skills for Complex Tasks

```text
# Long-running autonomous work
$autonomous-skill Build a REST API for the todo app

# Spec-driven development
$spec-kit-skill Initialize constitution for this project

# Image generation for mockups
$nanobanana-skill Generate a UI mockup for the dashboard
```

### Custom Prompts for Repetitive Tasks

Create custom prompts for tasks you do frequently:

```markdown
# File: ~/.codex/prompts/deploy-checklist.md

# deploy-checklist

Create a deployment checklist for $1 environment:

- [ ] Run all tests
- [ ] Update version numbers
- [ ] Build production bundle
- [ ] Review environment variables
- [ ] Backup database
- [ ] Deploy application
- [ ] Run smoke tests
- [ ] Monitor logs
- [ ] Update documentation

For each step, provide the specific commands needed.
```

Usage: `/prompts:deploy-checklist production`

### MCP Servers for Enhanced Capabilities

```text
# Browser automation for testing
Can you test the login flow in Chrome?

# Context management
Use context7 to manage project knowledge
```

### Profile-Based Workflows

Use different profiles for different scenarios:

```bash
# High-reasoning mode for complex problems
codex --profile reasoning-heavy

# Fast iteration mode for quick changes
codex --profile fast-iteration

# Security-focused mode for sensitive work
codex --profile security-strict
```

### Keyboard Shortcuts & Commands

- `/skills` - List available skills
- `/prompts:` - Access custom prompts
- `/init` - Initialize project context
- `/clear` - Clear conversation history
- `Ctrl+D` or `exit` - Exit Codex

## Workflow Optimization

### Morning Checklist

1. ✅ Start Codex with project context loaded
2. ✅ Review overnight CI/CD results
3. ✅ Prioritize tasks with Codex
4. ✅ Plan feature implementation

### During Development

1. ✅ Use incremental commits with Codex guidance
2. ✅ Request code reviews frequently
3. ✅ Generate tests alongside implementation
4. ✅ Document as you go

### Before Committing

1. ✅ Run linters and formatters
2. ✅ Review changes with Codex
3. ✅ Update documentation
4. ✅ Run test suite
5. ✅ Write meaningful commit messages

### End of Day

1. ✅ Use `/prompts:deep-reflector` for session review
2. ✅ Update AGENTS.md with learnings
3. ✅ Plan tomorrow's priorities
4. ✅ Commit all work in progress

## Integration with Other Tools

### Git Integration

```bash
# Codex can help with git operations
git status
git diff

# Ask Codex to explain changes
What changes did I make in this commit?

# Generate commit messages
Create a commit message for these changes
```

### CI/CD Integration

```text
# Analyze CI failures
The CI pipeline failed, help me understand why

# Fix CI issues
How should I fix this failing GitHub Actions workflow?
```

### Documentation Tools

```text
# Generate OpenAPI specs
Create OpenAPI documentation for this API

# Update Markdown docs
Help me restructure the documentation

# Create diagrams
Describe this architecture in Mermaid diagram format
```

## Advanced Patterns

### Pair Programming with Codex

1. **Driver role**: You write code, Codex reviews
2. **Navigator role**: Codex suggests, you implement
3. **Alternating**: Switch between implementation and review

### Test-Driven Development

```text
1. "Write a failing test for the login feature"
2. "Help me implement the minimum code to pass"
3. "Suggest refactoring improvements"
4. "Add edge case tests"
```

### Documentation-Driven Development

```text
1. "Create API documentation first"
2. "Review the design before implementation"
3. "Generate implementation from specs"
4. "Keep docs and code in sync"
```

## Troubleshooting Workflow Issues

### Codex Seems Confused

```text
# Clear context and start fresh
/clear

# Provide more context
"Let me explain the overall architecture first..."

# Be more specific
"Focus only on the authentication module"
```

### Performance Issues

```text
# Reduce context size
"Only consider files in the /src/auth directory"

# Use faster models for simple tasks
# Switch to a lighter model in config.toml

# Limit response length
"Give me a brief summary only"
```

## Best Practices

1. **Start small**: Begin with simple tasks and build up
2. **Be specific**: Clear instructions get better results
3. **Iterate**: Refine your questions based on responses
4. **Review**: Always review AI-generated code
5. **Learn**: Use `/prompts:deep-reflector` to improve
6. **Document**: Keep your AGENTS.md updated
7. **Experiment**: Try different prompts and skills
8. **Automate**: Create custom prompts for repeated tasks

Happy coding with Codex! 🚀
