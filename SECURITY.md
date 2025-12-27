# Security Policy

## Reporting Security Issues

If you discover a security vulnerability in this project, please report it
privately to help us address it before public disclosure.

**Do not open a public GitHub issue for security vulnerabilities.**

### How to Report

1. Email the project maintainer or use GitHub's private vulnerability reporting
   feature
2. Include detailed information about the vulnerability
3. Provide steps to reproduce if possible
4. Allow reasonable time for a response

## Security Best Practices

### API Keys and Secrets

- **Never commit API keys** or secrets to the repository
- Use environment variables for sensitive data
- Review `.gitignore` to ensure secrets are excluded
- Rotate API keys regularly
- Use least-privilege access principles

### Configuration Security

When setting up Codex configurations:

1. **Protect your API keys**:
   - Store in environment variables
   - Use `.env` files (excluded from git)
   - Keep them out of configuration files in version control

2. **LiteLLM Master Key**:
   - Change the default `sk-dummy` key in production
   - Use a strong, randomly generated key
   - Keep it secure and don't share it

3. **Sandbox Mode**:
   - Use `read-only` for untrusted code
   - Use `workspace-write` for development (network configurable)
   - Only use `danger-full-access` in isolated containers

4. **Approval Policies**:
   - Use `untrusted` policy for maximum safety
   - Avoid `never` policy except in fully trusted environments
   - Review commands before auto-approval

### Model Provider Security

Different providers have different security considerations:

#### GitHub Copilot
- Requires valid GitHub Copilot subscription
- Authentication via OAuth token
- Data is processed by GitHub/OpenAI

#### OpenRouter
- API key required
- Choose providers with appropriate data handling
- Review provider privacy policies

#### Azure OpenAI
- Enterprise-grade security
- Data residency options
- Access control via Azure AD

#### Self-hosted (LiteLLM)
- Control over data flow
- Local processing possible
- Network security is your responsibility

### Shell Environment

Configure `shell_environment_policy` carefully:

```toml
[shell_environment_policy]
inherit = "core"  # Don't use "all" in production
exclude = ["AWS_*", "AZURE_*", "API_*"]  # Exclude sensitive vars
```

### Network Access

Control network access in sandbox:

```toml
[sandbox_workspace_write]
network_access = false  # Disable if not needed
```

### MCP Server Security

When adding MCP servers:

1. Only use trusted sources
2. Review server code if available
3. Understand what data they access
4. Use appropriate permissions
5. Monitor server activity

## Vulnerability Disclosure Timeline

1. **Report received**: Acknowledgment within 48 hours
2. **Investigation**: Assessment within 7 days
3. **Fix development**: Varies by severity
4. **Disclosure**: Coordinated with reporter

## Supported Versions

This project aims to address security issues in:
- The latest release
- The main branch

## Security Updates

Security updates will be:
- Released as soon as possible
- Announced in release notes
- Tagged with security labels

## Questions?

For security-related questions that are not vulnerabilities, please open a
regular GitHub issue or discussion.

Thank you for helping keep this project secure! 🔒
