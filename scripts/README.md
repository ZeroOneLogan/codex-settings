# Scripts

Utility scripts for managing and verifying your Codex CLI setup.

## Available Scripts

### verify-setup.sh

Verifies that your Codex CLI installation is properly configured.

**Usage:**
```bash
~/.codex/scripts/verify-setup.sh
```

**What it checks:**
- Node.js installation and version
- Python installation and version
- Codex CLI installation
- LiteLLM installation (optional)
- Codex settings directory structure
- Configuration files

**Example output:**
```
Codex Settings Verification
============================

✓ Node.js is installed: v20.10.0
✓ Python is installed: Python 3.11.0
✓ Codex CLI is installed
✓ LiteLLM is installed
✓ ~/.codex directory exists
  ✓ config.toml found
  ✓ prompts directory found
  ✓ skills directory found

Verification complete!
```

## Adding New Scripts

When adding new utility scripts:

1. Create the script in this directory
2. Make it executable: `chmod +x script-name.sh`
3. Add documentation here
4. Follow the existing script conventions
5. Use clear comments in the script

## Script Conventions

- Use `#!/usr/bin/env bash` shebang
- Add descriptive header comments
- Use functions for better organization
- Provide helpful error messages
- Use consistent naming (kebab-case.sh)
