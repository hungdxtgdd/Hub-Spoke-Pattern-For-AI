#!/usr/bin/env bash
# ==============================================================================
# Hub & Spoke Pattern For AI - Automated Installer
# GitHub: https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI
# Usage:
#   curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
#   ./install.sh                      # Installs into current directory
#   ./install.sh /path/to/project     # Installs into target project directory
#   ./install.sh --global             # Installs globally for Cursor, Antigravity & Claude
# ==============================================================================

set -e

REPO_URL="https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI.git"
CLEANUP_TEMP=false
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || echo "")"

# Check if script is run locally inside cloned repo or via curl/remote
if [ -z "$SOURCE_DIR" ] || [ ! -d "$SOURCE_DIR/.rules-hub" ]; then
    TEMP_DIR=$(mktemp -d)
    CLEANUP_TEMP=true
    echo "⬇️  Downloading Hub & Spoke Pattern For AI from GitHub..."
    git clone --depth 1 "$REPO_URL" "$TEMP_DIR" >/dev/null 2>&1
    SOURCE_DIR="$TEMP_DIR"
fi

cleanup() {
    if [ "$CLEANUP_TEMP" = true ] && [ -n "$TEMP_DIR" ] && [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}
trap cleanup EXIT

TARGET_DIR="${1:-.}"

echo "🌟 [Hub & Spoke Pattern For AI] Initializing Installation..."

if [ "$1" == "--global" ]; then
    echo "🌍 Installing rules globally across your machine..."
    
    # 1. Antigravity Global Config
    GLOBAL_AGY="$HOME/.gemini/config/rules"
    mkdir -p "$GLOBAL_AGY"
    cp -Rf "$SOURCE_DIR/.rules-hub/"* "$GLOBAL_AGY/"
    echo "  ✅ Installed to Google Antigravity global rules: $GLOBAL_AGY"
    
    # 2. Cursor Global Rules
    GLOBAL_CURSOR="$HOME/.cursor/rules"
    mkdir -p "$GLOBAL_CURSOR"
    cp -Rf "$SOURCE_DIR/.cursor/rules/"* "$GLOBAL_CURSOR/"
    echo "  ✅ Installed to Cursor global rules: $GLOBAL_CURSOR"

    # 3. Claude Code Global Config
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

echo "🎯 Target project: $TARGET_DIR"

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
echo "✨ All AI tools in this project are now powered by Hub & Spoke:"
echo "   • Cursor IDE              (.cursor/rules/*.mdc)"
echo "   • Google Antigravity (AGY)(.agents/rules/*.md + AGENTS.md)"
echo "   • Anthropic Claude Code   (CLAUDE.md)"
echo "   • OpenAI Codex CLI        (CODEX.md)"
echo "   • Codeium Windsurf        (.windsurfrules)"
echo "   • GitHub Copilot          (.github/copilot-instructions.md)"
echo "=================================================================="
