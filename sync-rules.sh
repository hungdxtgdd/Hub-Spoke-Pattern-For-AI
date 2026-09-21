#!/usr/bin/env bash
# ==============================================================================
# Hub & Spoke Pattern For AI - Synchronization Script
# Synchronizes rules from .rules-hub/ (Hub) to all AI harnesses (Spokes)
# ==============================================================================

set -e

echo "🔄 Synchronizing AI Rules from .rules-hub/ (Hub) to all Spokes..."

# 1. Sync to Google Antigravity (.agents/rules/)
mkdir -p .agents/rules
cp -Rf .rules-hub/*.md .agents/rules/
echo "  ✅ Synced to Google Antigravity: .agents/rules/"

# 2. Sync to Cursor (.cursor/rules/*.mdc)
mkdir -p .cursor/rules
for file in .rules-hub/*.md; do
    filename=$(basename "$file" .md)
    target=".cursor/rules/${filename}.mdc"
    
    # Extract existing frontmatter if present in target, otherwise create default
    if [ -f "$target" ]; then
        # Preserve header lines between --- and ---
        frontmatter=$(awk '/^---/{p++} p==1{print} p==2{print; exit}' "$target" 2>/dev/null || true)
    else
        frontmatter="---
description: Rule for ${filename}
globs: [\"**/*\"]
alwaysApply: true
---"
    fi
    
    # Write combined frontmatter + markdown content
    if [ -n "$frontmatter" ]; then
        {
            echo "$frontmatter"
            echo ""
            cat "$file"
        } > "$target"
    else
        cp "$file" "$target"
    fi
    echo "  ✅ Synced to Cursor: $target"
done

echo ""
echo "🎉 100% Rules Synchronized Across All AI Platforms!"
