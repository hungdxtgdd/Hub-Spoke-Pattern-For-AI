#!/usr/bin/env bash
# ==============================================================================
# Hub & Spoke Pattern For AI - Automated Installer
# Usage:
#   ./install.sh                      # Installs into the current directory
#   ./install.sh /path/to/target-dir  # Installs into a specific directory
#   ./install.sh --global             # Installs into user's global AI config paths
# ==============================================================================

set -e

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-.}"

echo "🌟 [Hub & Spoke Pattern For AI] Initializing Installation..."

if [ "$1" == "--global" ]; then
    echo "🌍 Installing rules globally for your machine..."
    
    # Antigravity Global Config
    GLOBAL_AGY="$HOME/.gemini/config/rules"
    mkdir -p "$GLOBAL_AGY"
    cp -Rf "$SOURCE_DIR/.rules-hub/"* "$GLOBAL_AGY/"
    echo "  ✅ Installed to Google Antigravity global rules: $GLOBAL_AGY"
    
    # Cursor Global Rules
    GLOBAL_CURSOR="$HOME/.cursor/rules"
    mkdir -p "$GLOBAL_CURSOR"
    cp -Rf "$SOURCE_DIR/.cursor/rules/"* "$GLOBAL_CURSOR/"
    echo "  ✅ Installed to Cursor global rules: $GLOBAL_CURSOR"

    # Claude Code Global Config (if exists or home directory)
    if [ -d "$HOME/.claude" ]; then
        cp -f "$SOURCE_DIR/CLAUDE.md" "$HOME/.claude/CLAUDE.md" 2>/dev/null || true
        echo "  ✅ Installed to Claude Code: $HOME/.claude/CLAUDE.md"
    fi

    echo ""
    echo "🎉 Global installation completed successfully!"
    exit 0
fi

# Resolve target directory
mkdir -p "$TARGET_DIR"
TARGET_DIR="$(cd "$TARGET_DIR" && pwd)"

echo "🎯 Target project directory: $TARGET_DIR"

# 1. Copy Hub directory
echo "  📦 Copying .rules-hub/ (Single Source of Truth)..."
mkdir -p "$TARGET_DIR/.rules-hub"
cp -Rf "$SOURCE_DIR/.rules-hub/"* "$TARGET_DIR/.rules-hub/"

# 2. Copy Cursor Spoke
echo "  🎯 Copying .cursor/rules/ (Cursor MDC adapter)..."
mkdir -p "$TARGET_DIR/.cursor/rules"
cp -Rf "$SOURCE_DIR/.cursor/rules/"* "$TARGET_DIR/.cursor/rules/"

# 3. Copy Antigravity Spoke
echo "  🚀 Copying .agents/rules/ (Antigravity adapter)..."
mkdir -p "$TARGET_DIR/.agents/rules"
cp -Rf "$SOURCE_DIR/.agents/rules/"* "$TARGET_DIR/.agents/rules/"

# 4. Copy GitHub Copilot Spoke
echo "  🤖 Copying .github/copilot-instructions.md..."
mkdir -p "$TARGET_DIR/.github"
cp -f "$SOURCE_DIR/.github/copilot-instructions.md" "$TARGET_DIR/.github/" 2>/dev/null || true

# 5. Copy Root Rule Files
echo "  📄 Copying Root Rules (AGENTS.md, CLAUDE.md, CODEX.md, .windsurfrules)..."
cp -f "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/"
cp -f "$SOURCE_DIR/CLAUDE.md" "$TARGET_DIR/"
cp -f "$SOURCE_DIR/CODEX.md" "$TARGET_DIR/"
cp -f "$SOURCE_DIR/.windsurfrules" "$TARGET_DIR/"
cp -f "$SOURCE_DIR/sync-rules.sh" "$TARGET_DIR/"
chmod +x "$TARGET_DIR/sync-rules.sh" 2>/dev/null || true

echo ""
echo "=================================================================="
echo "🎉 Hub & Spoke AI Rules successfully installed to: $TARGET_DIR"
echo "=================================================================="
echo "✨ Supported AI Tools:"
echo "   • Cursor IDE              (.cursor/rules/*.mdc)"
echo "   • Google Antigravity (AGY)(.agents/rules/*.md + AGENTS.md)"
echo "   • Anthropic Claude Code   (CLAUDE.md)"
echo "   • OpenAI Codex CLI        (CODEX.md)"
echo "   • Codeium Windsurf        (.windsurfrules)"
echo "   • GitHub Copilot          (.github/copilot-instructions.md)"
echo "=================================================================="
