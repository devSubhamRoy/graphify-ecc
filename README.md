<div align=center>

# 🥷 Universal Stealth AI Harness
### (Graphify Knowledge Graph + Everything Claude Code)

**Supercharge ANY IDE with 120+ AI Skills & Code Graphs — with ZERO trace in your Git repo.**

<br>

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey)](https://github.com/devSubhamRoy/graphify-ecc)
[![IDEs Supported](https://img.shields.io/badge/IDEs-Antigravity%20%7C%20Cursor%20%7C%20Claude%20Code%20%7C%20Codex-success)](https://github.com/devSubhamRoy/graphify-ecc)
[![Git Footprint](https://img.shields.io/badge/Git%20Footprint-0%25%20(Pure%20Stealth)-brightgreen)](https://github.com/devSubhamRoy/graphify-ecc)

<br>

<p align=center>
  <a href=#-what-is-this><strong>What is this?</strong></a> •
  <a href=#-1-minute-quickstart><strong>Quickstart</strong></a> •
  <a href=#-what-happens-when-you-run-it-interactive-cli><strong>Interactive Setup</strong></a> •
  <a href=#-supported-ides--skill-modules><strong>Supported IDEs</strong></a> •
  <a href=#-1-click-clean--self-destruct><strong>Cleanup</strong></a> •
  <a href=#-why-stealth-mode-gitinfoexclude-vs-gitignore><strong>Why Stealth?</strong></a>
</p>

</div>

---

## 💡 What is this?

When you work on client projects, company codebases, or personal repositories:
1. You want **AI superpowers** (AST Knowledge Graphs, TDD workflows, automatic code reviews, refactoring skills).
2. You **CANNOT commit AI config files** (.agents/, graphify-out/, .cursor/, .ecc/) to GitHub or GitLab.

**This harness solves that problem completely.**  
It installs the entire AI engine locally in your project, while automatically hiding all traces from Git using private stealth ignores (.git/info/exclude).

---

## ⚡ 1-Minute Quickstart

Run **ONE command** in your project terminal:

### 🪟 Windows (PowerShell)
`powershell
irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
`

### 🍎 macOS / 🐧 Linux / Git Bash
`ash
curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.sh | bash
`

---

## 🖥️ What Happens When You Run It? (Interactive CLI)

The script automatically prompts you in your terminal to select your IDE and desired skill profile:

`	ext
==========================================================
   UNIVERSAL STEALTH AI SETUP (Graphify + ECC Engine)    
==========================================================

[1/4] Enforcing Local Stealth Git-Ignore...
   [OK] Local Git stealth exclude configured.
   [OK] AI artifacts are 100% hidden from Git commits & pushes.

[2/4] Select your IDE / AI Agent:
  [1] Google Antigravity (Default)
  [2] Claude Code
  [3] Cursor IDE
  [4] Codex
  [5] OpenCode
  [6] Gemini CLI
  [7] Zed
  [8] Kimi Code

Select ECC Profile to install:
  [1] Developer Profile (Recommended: TDD, Code Review, Testing, Git - 9 modules)
  [2] Full Profile (All 26 modules: DevOps, Docker, K8s, ML, 290+ skills)
  [3] Minimal Profile (Low-context core workflows)

[3/4] Running Graphify (Knowledge Graph)...
   [OK] AST knowledge graph generated in graphify-out/

[4/4] Installing ECC Skills...
   [OK] 124+ Skills & 94 Workflows configured successfully!
`

---

## 🎯 Supported IDEs & Skill Modules

| IDE / Harness | Target Identifier | Features Included |
| :--- | :---: | :--- |
| 🪐 **Google Antigravity** | ntigravity | Native .agents/skills (124+ skills), rules, workflows & subagents |
| 🟣 **Claude Code** | claude | Marketplace plugin, prompts, rules & memory harness |
| ⚡ **Cursor IDE** | cursor | .cursor/agents, rules & workflow definitions |
| 🟢 **Codex** | codex | Native Codex plugin & role definitions |
| 🪟 **OpenCode / Zed / Gemini / Kimi** | opencode / zed | Project-local adapters and workflows |

---

## 🧹 1-Click Clean / Self-Destruct

Whenever you are done with development and want to wipe all local AI files, graphs, and skill folders before handing over or pushing:

### 🪟 Windows (PowerShell)
`powershell
irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1 | iex
`

### 🍎 macOS / 🐧 Linux / Git Bash
`ash
curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.sh | bash
`

---

## 🔒 Why Stealth Mode? (.git/info/exclude vs .gitignore)

| Feature | Standard .gitignore | 🥷 Our Stealth Mode (.git/info/exclude) |
| :--- | :---: | :---: |
| **Hides files locally** | ✅ Yes | ✅ Yes |
| **Creates Git file diffs** | ❌ **YES** (Modifies .gitignore in repo) | ✅ **ZERO diffs** (File remains untouched) |
| **Visible to Clients / Teammates** | ❌ **YES** (Visible in Git commit history) | ✅ **100% INVISIBLE** (Never pushed to remote) |
| **Works with git add .** | ✅ Yes | ✅ Yes (Completely skipped by Git) |

---

## 🚀 Pro-Tip: Add Permanent Aliases (Optional)

Add these two functions to your PowerShell Profile (
otepad C:\Users\Subham\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1):

`powershell
function init-ai {
    irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
}

function clean-ai {
    irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1 | iex
}
`

Now, in **any codebase**, you can simply type:
* init-ai ➔ Automatically prompts IDE selection & loads full AI suite.
* clean-ai ➔ Wipes all AI artifacts instantly.

---

## 📄 License
MIT License © [devSubhamRoy](https://github.com/devSubhamRoy)
