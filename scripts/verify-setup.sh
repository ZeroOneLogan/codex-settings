#!/usr/bin/env bash
# Codex Settings Verification Script
# This script verifies that your Codex CLI setup is working correctly

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "Codex Settings Verification"
echo "============================"
echo ""

# Check Node.js
if command -v node &> /dev/null; then
    echo "✓ Node.js is installed: $(node --version)"
else
    echo "✗ Node.js is not installed"
fi

# Check Python
if command -v python3 &> /dev/null; then
    echo "✓ Python is installed: $(python3 --version)"
else
    echo "✗ Python3 is not installed"
fi

# Check Codex CLI
if command -v codex &> /dev/null; then
    echo "✓ Codex CLI is installed"
else
    echo "✗ Codex CLI is not installed"
fi

# Check LiteLLM
if command -v litellm &> /dev/null; then
    echo "✓ LiteLLM is installed"
else
    echo "⚠ LiteLLM is not installed (optional)"
fi

# Check ~/.codex directory
if [ -d ~/.codex ]; then
    echo "✓ ~/.codex directory exists"
    [ -f ~/.codex/config.toml ] && echo "  ✓ config.toml found"
    [ -d ~/.codex/prompts ] && echo "  ✓ prompts directory found"
    [ -d ~/.codex/skills ] && echo "  ✓ skills directory found"
else
    echo "✗ ~/.codex directory not found"
fi

echo ""
echo "Verification complete!"
