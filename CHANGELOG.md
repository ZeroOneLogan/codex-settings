# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Repository badges (license, stars, issues)
- CONTRIBUTING.md with comprehensive contribution guidelines
- CODE_OF_CONDUCT.md for community standards
- SECURITY.md with security best practices and vulnerability reporting
- CHANGELOG.md for tracking changes
- .editorconfig for consistent code style across editors
- .markdownlint.json for markdown formatting standards
- Troubleshooting section in README
- FAQ section in README
- Examples directory with practical use cases

### Changed
- Fixed repository URL references (feiskyer → ZeroOneLogan)
- Improved README structure and readability
- Enhanced documentation with better formatting
- Fixed markdown linting issues (ordered list prefixes)
- Updated configuration files with better inline comments

### Fixed
- Corrected ordered list numbering in README
- Fixed line length issues in documentation

## [1.0.0] - 2025-12-27

### Added
- Initial release with LiteLLM configuration
- Support for multiple model providers (GitHub Copilot, ChatGPT, Azure OpenAI, OpenRouter, ModelScope, Kimi)
- Custom prompts for common development tasks
- Skills system for discoverable instruction bundles
- Policy files for skill execution control
- MCP server integrations

### Prompts
- deep-reflector: Analyze development sessions
- insight-documenter: Document technical breakthroughs
- instruction-reflector: Improve Codex instructions
- github-issue-fixer: Fix GitHub issues systematically
- github-pr-reviewer: Review GitHub pull requests
- ui-engineer: Create frontend solutions
- prompt-creator: Create custom prompts

### Skills
- claude-skill: Handoff tasks to Claude Code CLI
- autonomous-skill: Long-running task automation
- nanobanana-skill: Image generation with Gemini
- youtube-transcribe-skill: Extract YouTube subtitles
- kiro-skill: Interactive feature development
- spec-kit-skill: Constitution-based development

[Unreleased]: https://github.com/ZeroOneLogan/codex-settings/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/ZeroOneLogan/codex-settings/releases/tag/v1.0.0
