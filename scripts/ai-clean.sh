#!/usr/bin/env bash
# ==========================================================
# Universal AI Clean / Wipe Script (Stealth Cleanup)
# ==========================================================

echo ""
echo "=========================================================="
echo "             AI STEALTH ARTIFACTS CLEANUP                 "
echo "=========================================================="
echo ""

PATHS_TO_CLEAN=(
  "graphify-out"
  ".graphify"
  ".agents"
  ".agent"
  ".ecc"
  ".claude"
  ".cursor"
  ".gemini"
  ".codex"
  ".kimi-code"
  ".zed"
  "STEALTH_AI_GUIDE.md"
)

for p in "${PATHS_TO_CLEAN[@]}"; do
  if [ -e "$p" ]; then
    echo "Removing: $p"
    rm -rf "$p"
  fi
done

find . -name "*.agent-log" -type f -delete 2>/dev/null || true

if [ -f ".git/info/exclude" ]; then
  sed -i '/graphify\|\.agents\|\.ecc\|\.claude\|\.cursor\|\.gemini\|\.codex\|\.kimi\|\.zed\|ai-stealth\|ai-clean/d' .git/info/exclude 2>/dev/null || true
fi

echo ""
echo "   [OK] AI stealth directories and artifacts removed."
echo "   [OK] Workspace is clean with zero AI trace."
echo ""
