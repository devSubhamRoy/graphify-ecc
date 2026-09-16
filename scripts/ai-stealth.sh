#!/usr/bin/env bash
# ==========================================================
# Universal Interactive Stealth AI Setup (Graphify + ECC)
# ==========================================================

set -e

echo ""
echo "=========================================================="
echo "   UNIVERSAL STEALTH AI SETUP (Graphify + ECC Engine)    "
echo "=========================================================="
echo ""

# 1. Enforce Local Stealth Git-Ignore (.git/info/exclude)
echo "[1/4] Enforcing Local Stealth Git-Ignore..."

STEALTH_ENTRIES=(
  "graphify-out/"
  ".graphify/"
  ".agents/"
  ".agent/"
  ".ecc/"
  ".claude/"
  ".cursor/"
  ".gemini/"
  ".codex/"
  ".kimi-code/"
  ".zed/"
  "ecc.config.*"
  "*.agent-log"
  "ai-stealth.ps1"
  "ai-clean.ps1"
  "ai-stealth.sh"
  "ai-clean.sh"
  "scripts/ai-stealth.ps1"
  "scripts/ai-clean.ps1"
  "scripts/ai-stealth.sh"
  "scripts/ai-clean.sh"
  "STEALTH_AI_GUIDE.md"
)

if [ -d ".git" ]; then
  mkdir -p .git/info
  EXCLUDE_FILE=".git/info/exclude"
  touch "$EXCLUDE_FILE"
  for entry in "${STEALTH_ENTRIES[@]}"; do
    if ! grep -Fxq "$entry" "$EXCLUDE_FILE"; then
      echo "$entry" >> "$EXCLUDE_FILE"
    fi
  done
  git rm -r --cached .agents graphify-out .ecc .claude .cursor .gemini .codex .kimi-code .zed 2>/dev/null || true
  echo "   [OK] Local Git stealth exclude configured."
  echo "   [OK] AI artifacts are 100% hidden from Git commits & pushes."
else
  echo "   [INFO] No .git folder found. Stealth exclude will activate once Git is initialized."
fi

# 2. Interactive IDE Selection
echo ""
echo "[2/4] IDE / AI Harness Configuration..."
echo "Select your IDE / AI Agent:"
echo "  [1] Google Antigravity (Default)"
echo "  [2] Claude Code"
echo "  [3] Cursor IDE"
echo "  [4] Codex"
echo "  [5] OpenCode"
echo "  [6] Gemini CLI"
echo "  [7] Zed"
echo "  [8] Kimi Code"

read -p "Enter number (1-8) [Default: 1]: " targetChoice
case "$targetChoice" in
  2) TARGET="claude" ;;
  3) TARGET="cursor" ;;
  4) TARGET="codex" ;;
  5) TARGET="opencode" ;;
  6) TARGET="gemini" ;;
  7) TARGET="zed" ;;
  8) TARGET="kimi" ;;
  *) TARGET="antigravity" ;;
esac

echo ""
echo "Select ECC Profile to install:"
echo "  [1] Developer Profile (Recommended: TDD, Code Review, Testing, Git - 9 modules)"
echo "  [2] Full Profile (All 26 modules: DevOps, Docker, K8s, ML, 290+ skills)"
echo "  [3] Minimal Profile (Low-context core workflows)"

read -p "Enter number (1-3) [Default: 1]: " profileChoice
case "$profileChoice" in
  2) PROFILE="full" ;;
  3) PROFILE="minimal" ;;
  *) PROFILE="developer" ;;
esac

echo ""
echo "   Selected Target : $TARGET"
echo "   Selected Profile: $PROFILE"

# 3. Run Graphify
echo ""
echo "[3/4] Updating & Running Graphify (Knowledge Graph)..."
if command -v pip &>/dev/null; then
  pip install --upgrade graphifyy --quiet 2>/dev/null || true
fi
if command -v graphify &>/dev/null; then
  graphify . --code-only || true
  echo "   [OK] Graphify knowledge graph generated in graphify-out/"
else
  echo "   [WARN] Graphify CLI not found. Skipping knowledge graph."
fi

# 4. Install ECC
echo ""
echo "[4/4] Installing ECC ($PROFILE profile for $TARGET)..."
npx -y ecc-universal@latest install --profile "$PROFILE" --target "$TARGET"

echo ""
echo "=========================================================="
echo " AI Stealth Mode Active! Ready for development."
echo " Target IDE: $TARGET | Profile: $PROFILE"
echo " ---------------------------------------------------------"
echo " To wipe all AI traces anytime, run: ./scripts/ai-clean.sh"
echo "=========================================================="
echo ""
