# Custom Prompt Template Example

Learn how to create your own custom prompts for Codex CLI.

## Basic Structure

A custom prompt is a markdown file with:
1. A descriptive name (filename)
2. Instructions for Codex
3. Optional argument placeholders

## Simple Prompt (No Arguments)

**File**: `~/.codex/prompts/code-reviewer.md`

```markdown
# code-reviewer

You are an experienced code reviewer. Please review the code in the current
context and provide:

1. **Strengths**: What's done well
2. **Issues**: Problems or bugs found
3. **Suggestions**: Improvements and best practices
4. **Security**: Any security concerns

Be constructive and specific in your feedback.
```

**Usage**:
```text
/prompts:code-reviewer
```

## Prompt with Arguments

**File**: `~/.codex/prompts/explain-code.md`

```markdown
# explain-code

Please explain the $1 in detail, including:

1. **Purpose**: What does it do?
2. **How it works**: Technical details
3. **Usage**: How to use it
4. **Examples**: Practical examples

Target audience: $2 developers.
```

**Usage**:
```text
/prompts:explain-code function "beginner"
/prompts:explain-code class "intermediate"
```

## Advanced: Multiple Arguments

**File**: `~/.codex/prompts/refactor-code.md`

```markdown
# refactor-code

Refactor the $1 with the following goals:

Primary objective: $2

Additional constraints:
$ARGUMENTS

Provide:
1. Original code analysis
2. Refactored version
3. Explanation of changes
4. Before/after comparison
```

**Usage**:
```text
/prompts:refactor-code "authentication module" "improve security" "maintain backward compatibility" "add type hints"
```

## Argument Placeholders

- `$1`, `$2`, `$3`, ..., `$9`: Positional arguments (1-9)
- `$ARGUMENTS`: All arguments joined by spaces
- `$$`: Literal dollar sign

## Best Practices

### 1. Clear Instructions

❌ Bad:
```markdown
Help with the code.
```

✅ Good:
```markdown
Analyze the selected code for:
1. Code quality issues
2. Performance bottlenecks
3. Potential bugs
4. Style violations

Provide specific recommendations with code examples.
```

### 2. Structured Output

Use numbered lists or sections to organize output:

```markdown
## Analysis

### Current State
[Analysis here]

### Recommendations
1. First recommendation
2. Second recommendation

### Implementation Steps
[Steps here]
```

### 3. Context Awareness

Reference what Codex can see:

```markdown
Review the code in the current editor context, focusing on files that have
been recently modified. Consider the project structure visible in the file tree.
```

### 4. Specify Format

Tell Codex how to respond:

```markdown
Provide your response in the following format:

**Summary**: Brief overview (2-3 sentences)

**Details**: Comprehensive explanation

**Code**: Executable code examples

**Next Steps**: Actionable items
```

## Complete Example

**File**: `~/.codex/prompts/api-designer.md`

```markdown
# api-designer

Design a RESTful API for $1 with the following requirements:

**Domain**: $1
**Framework**: $2
**Additional Requirements**: $ARGUMENTS

Please provide:

## 1. API Overview
- Purpose and scope
- Key entities
- Authentication strategy

## 2. Endpoint Design

For each endpoint:
- HTTP Method
- Path
- Request/Response schemas
- Status codes

## 3. Data Models

Define the data structures with:
- Field names and types
- Validation rules
- Relationships

## 4. Security Considerations

- Authentication method
- Authorization rules
- Data protection
- Rate limiting

## 5. Example Usage

Provide curl examples for main operations:
- Create
- Read
- Update
- Delete

## 6. OpenAPI Specification

Generate OpenAPI 3.0 spec for the API.
```

**Usage**:
```text
/prompts:api-designer "user management" "FastAPI" "OAuth2 authentication" "SQLAlchemy ORM" "PostgreSQL database"
```

## Tips

1. **Test your prompts**: Try them with different inputs
2. **Iterate**: Refine based on results
3. **Be specific**: Clear instructions get better results
4. **Use examples**: Show what you want
5. **Structure output**: Guide the format of responses

## Sharing Prompts

Once you create a useful prompt:

1. Test it thoroughly
2. Document the usage
3. Consider contributing it back to this repository
4. See [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines

## More Examples

Check out the built-in prompts for inspiration:
- `~/.codex/prompts/github-issue-fixer.md`
- `~/.codex/prompts/ui-engineer.md`
- `~/.codex/prompts/deep-reflector.md`

Happy prompting! ✨
