# Quick Start Example

Get Codex CLI running with this settings repository in 5 minutes.

## Prerequisites

- Node.js 18+ installed
- Python 3.9+ installed (for LiteLLM)
- GitHub Copilot subscription (for default config)

## Step-by-Step Setup

### 1. Install Required Tools

```bash
# Install LiteLLM
pip install -U 'litellm[proxy]'

# Install Codex CLI
npm install -g @openai/codex
```

### 2. Clone This Repository

```bash
# Backup any existing Codex configuration
mv ~/.codex ~/.codex.bak 2>/dev/null || true

# Clone this repository
git clone https://github.com/ZeroOneLogan/codex-settings.git ~/.codex
```

### 3. Start LiteLLM Proxy

```bash
# Start LiteLLM with the included config
litellm --config ~/.codex/litellm_config.yaml
```

Keep this terminal open. LiteLLM will run on `http://localhost:4000`.

### 4. Start Codex (in a new terminal)

```bash
codex
```

## Verification

Once Codex starts, try these commands:

```text
# Check available skills
/skills

# List custom prompts
/prompts:

# Test a prompt
What models are available?

# Try a custom prompt
/prompts:deep-reflector
```

## What's Next?

### Explore Custom Prompts

Try the included prompts:

```text
/prompts:github-issue-fixer 123
/prompts:github-pr-reviewer 456
/prompts:ui-engineer Create a login form
```

### Try Skills

Invoke skills with the `$` prefix:

```text
$kiro-skill Create a user authentication feature
```

### Customize Configuration

Edit `~/.codex/config.toml` to adjust settings:

```toml
# Change reasoning effort
model_reasoning_effort = "medium"  # low, medium, high

# Change approval policy
approval_policy = "untrusted"  # untrusted, on-request, on-failure, never

# Adjust sandbox mode
sandbox_mode = "read-only"  # read-only, workspace-write, danger-full-access
```

### Switch Model Providers

Try different providers:

```bash
# Use ChatGPT directly (requires 'codex login')
cp ~/.codex/configs/chatgpt.toml ~/.codex/config.toml

# Use OpenRouter
cp ~/.codex/configs/openrouter.toml ~/.codex/config.toml
# Edit config.toml and add your OpenRouter API key

# Use Azure OpenAI
cp ~/.codex/configs/azure.toml ~/.codex/config.toml
# Edit config.toml and add your Azure credentials
```

## Troubleshooting

### LiteLLM Won't Start

Check Python version:
```bash
python3 --version  # Should be 3.9+
```

Try upgrading LiteLLM:
```bash
pip install -U 'litellm[proxy]'
```

### Codex Can't Connect

Verify LiteLLM is running:
```bash
curl http://localhost:4000/health
```

Check config points to correct URL:
```bash
grep base_url ~/.codex/config.toml
```

### Prompts Not Showing

Restart Codex to reload prompts:
```bash
# Exit Codex (Ctrl+D or type 'exit')
codex
```

## Next Steps

- Read the [main README](../README.md) for detailed documentation
- Explore [other examples](README.md)
- Check out [configuration options](../README.md#configuration-options)
- Learn about [skills](../README.md#skills-experimental)

Happy coding! 🚀
