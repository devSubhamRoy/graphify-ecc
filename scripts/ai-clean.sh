#!/usr/bin/env bash
# ==========================================
# AI Stealth Self-Destruct / Clean Script
# ==========================================

echo ""
echo "Wiping all AI footprints from current project..."

targets=(
    "graphify-out"
    ".graphify"
    ".ecc"
    "ecc.config.js"
    "ecc.config.json"
)

for target in "${targets[@]}"; do
    if [ -e "$target" ]; then
        rm -rf "$target"
        echo "   [DELETED] $target"
    fi
done

# Clean temp logs if any
find . -name "*.agent-log" -type f -delete 2>/dev/null || true

echo ""
echo "Project is completely clean! Zero AI traces remaining."
echo ""
