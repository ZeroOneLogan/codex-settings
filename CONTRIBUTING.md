# Contributing to Codex Settings

Thank you for your interest in contributing to this project! This document
provides guidelines for contributions.

## How to Contribute

### Reporting Issues

- Check if the issue already exists
- Use the issue templates when available
- Provide clear, detailed descriptions
- Include reproduction steps for bugs
- Share relevant configuration snippets

### Submitting Changes

1. **Fork the repository**

   ```bash
   gh repo fork ZeroOneLogan/codex-settings --clone
   ```

2. **Create a feature branch**

   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/issue-description
   ```

3. **Make your changes**
   - Follow existing code style and conventions
   - Test your changes thoroughly
   - Update documentation as needed

4. **Commit your changes**

   ```bash
   git add .
   git commit -m "feat: add new prompt for X"
   # or
   git commit -m "fix: correct issue in Y configuration"
   ```

   Use conventional commit messages:
   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation changes
   - `style:` for formatting changes
   - `refactor:` for code refactoring
   - `test:` for adding tests
   - `chore:` for maintenance tasks

5. **Push and create a pull request**

   ```bash
   git push origin feature/your-feature-name
   gh pr create --fill
   ```

## Types of Contributions

### Adding Custom Prompts

1. Create a new `.md` file in `prompts/` directory
2. Follow the naming convention: `kebab-case.md`
3. Include clear documentation and usage examples
4. Use argument placeholders (`$1`, `$2`, etc.) for parameters
5. Test the prompt thoroughly

Example structure:

```markdown
# prompt-name

Brief description of what the prompt does.

## Usage

/prompts:prompt-name [arg1] [arg2]

## Description

Detailed explanation of the prompt's behavior...
```

### Adding Skills

1. Create a new directory under `skills/`
2. Include a `SKILL.md` file with frontmatter metadata
3. Add helper files in a `helpers/` subdirectory if needed
4. Create a corresponding `.codexpolicy` file in `policy/` if needed
5. Document dependencies and setup requirements

Example structure:

```markdown
---
name: skill-name
description: Brief description
---

# Skill Name

Detailed documentation...
```

### Adding Configurations

1. Place config files in `configs/` directory
2. Use descriptive names: `provider-name.toml`
3. Include inline comments explaining settings
4. Document required environment variables
5. Provide setup instructions in README

### Improving Documentation

- Fix typos and grammar
- Add clarifying examples
- Improve formatting and structure
- Add missing information
- Update outdated content

## Style Guidelines

### Markdown

- Use ATX-style headers (`#` syntax)
- Wrap lines at 80 characters for readability (except code blocks and links)
- Use fenced code blocks with language identifiers
- Use reference-style links for repeated URLs

### TOML Configuration

- Use inline comments to explain settings
- Group related settings together
- Follow existing indentation (2 spaces)
- Quote string values consistently

### Prompts

- Write clear, actionable instructions
- Include examples where helpful
- Document all parameters
- Use consistent terminology

## Code Review Process

1. All submissions require review
2. Maintainers will provide feedback
3. Address review comments promptly
4. Be open to suggestions and improvements

## Community

- Be respectful and constructive
- Help others in discussions
- Share your use cases and learnings
- Contribute to improving the project

## Questions?

Feel free to open an issue for:
- Questions about contributing
- Clarification on guidelines
- Discussion of potential changes
- General feedback

Thank you for contributing! 🎉
