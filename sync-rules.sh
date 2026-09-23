#!/usr/bin/env bash
# ==============================================================================
# Hub & Spoke Pattern For AI - Synchronization Script
# Synchronizes rules from .rules-hub/ (Hub) to all AI harnesses (Spokes)
# ==============================================================================

set -e

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd)"
echo "🔄 Synchronizing AI Rules & SDD Templates from .rules-hub/ (Hub) to all Spokes..."

# 1. Sync to Google Antigravity (.agents/rules/ and .agents/context-template/)
mkdir -p "$SOURCE_DIR/.agents/rules"
mkdir -p "$SOURCE_DIR/.agents/context-template"
cp -Rf "$SOURCE_DIR/.rules-hub/"*.md "$SOURCE_DIR/.agents/rules/"
if [ -d "$SOURCE_DIR/.rules-hub/context-template" ]; then
    cp -Rf "$SOURCE_DIR/.rules-hub/context-template/"* "$SOURCE_DIR/.agents/context-template/"
fi
echo "  ✅ Synced to Google Antigravity: .agents/rules/ & .agents/context-template/"

# 2. Sync to Cursor (.cursor/rules/*.mdc and .cursor/context-template/)
mkdir -p "$SOURCE_DIR/.cursor/rules"
mkdir -p "$SOURCE_DIR/.cursor/context-template"
if [ -d "$SOURCE_DIR/.rules-hub/context-template" ]; then
    cp -Rf "$SOURCE_DIR/.rules-hub/context-template/"* "$SOURCE_DIR/.cursor/context-template/"
fi

for file in "$SOURCE_DIR/.rules-hub/"*.md; do
    filename=$(basename "$file" .md)
    target="$SOURCE_DIR/.cursor/rules/${filename}.mdc"
    
    frontmatter="---
description: Rule for ${filename}
globs: [\"**/*\"]
alwaysApply: true
---"
    
    {
        echo "$frontmatter"
        echo ""
        cat "$file"
    } > "$target"
    echo "  ✅ Synced to Cursor: $target"
done

echo ""
echo "🎉 100% Rules & Templates Synchronized Across All AI Platforms!"
