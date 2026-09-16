<div align=center>

# 🥷 Universal Stealth AI Harness
### Graphify Knowledge Graph + Everything Claude Code (ECC)

**Supercharge ANY IDE with 120+ AI Skills, Code Graphs & Workflows — with ZERO Git footprint.**

---

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-9cf)](https://github.com/devSubhamRoy/graphify-ecc)
[![IDEs](https://img.shields.io/badge/IDEs-Antigravity%20%7C%20Cursor%20%7C%20Claude%20Code%20%7C%20Codex-success)](https://github.com/devSubhamRoy/graphify-ecc)
[![Git Trace](https://img.shields.io/badge/Git%20Trace-0%25%20(Pure%20Stealth)-brightgreen)](https://github.com/devSubhamRoy/graphify-ecc)

<br>

[⚡ Quickstart 1-Click](#-quickstart-1-click-copy) • [💻 Local Offline Setup](#-option-2-local-offline-setup-clone--run) • [🖥️ CLI Preview](#%EF%B8%8F-interactive-cli-prompt) • [💻 Supported IDEs](#-supported-ides--features) • [🧹 1-Click Cleanup](#-1-click-cleanup--self-destruct) • [🔒 Why Stealth?](#-why-stealth-mode)

</div>

---

## 📌 What is This?

When working on client projects, company codebases, or open-source repositories:
1. You want **AI superpowers** (AST Knowledge Graphs, TDD workflows, automated code reviews, refactoring skills).
2. You **CANNOT commit AI config files** (.agents/, graphify-out/, .cursor/, .ecc/) to GitHub or GitLab.

> **The Solution:** This harness configures the full AI suite locally in your workspace and injects private .git/info/exclude rules so **NOTHING is ever committed or pushed to GitHub / GitLab**.

---

## ⚡ Quickstart (1-Click Copy)

### 🔹 Option 1: Instant Online 1-Liner (No Clone Required)

Hover over any command block and click the **Copy** button:

#### 🪟 Windows (PowerShell):
`powershell
irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
`
🔗 *Raw Link:* [ai-stealth.ps1](https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1)

#### 🍎 macOS / 🐧 Linux / Git Bash:
`ash
curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.sh | bash
`
🔗 *Raw Link:* [ai-stealth.sh](https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.sh)

---

### 🔹 Option 2: Local Offline Setup (Clone & Run)

If you want to keep the scripts on your machine and run them offline:

#### Step 1: Clone Repository
`ash
git clone https://github.com/devSubhamRoy/graphify-ecc.git
`

#### Step 2: Run in Any Project Folder

**On Windows (PowerShell):**
`powershell
powershell -ExecutionPolicy Bypass -File C:\path\to\graphify-ecc\scripts\ai-stealth.ps1
`

**On macOS / Linux (Bash):**
`ash
bash /path/to/graphify-ecc/scripts/ai-stealth.sh
`

---

### 🔹 Option 3: Copy scripts/ Folder Directly Into Your Project

Place the scripts/ directory inside your project root:
`	ext
your-project/
└── scripts/
    ├── ai-stealth.ps1
    ├── ai-clean.ps1
    ├── ai-stealth.sh
    └── ai-clean.sh
`
Run directly from terminal:
* **Windows:**
  `powershell
  .\scripts\ai-stealth.ps1
  `
* **macOS / Linux:**
  `ash
  ./scripts/ai-stealth.sh
  `

---

## 🖥️ Interactive CLI Prompt

When the script runs, it interactively prompts you to choose your environment:

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

## 💻 Supported IDEs & Features

| IDE / AI Tool | Adapter Target | Installed Assets |
| :--- | :---: | :--- |
| 🪐 **Google Antigravity** | ntigravity | Native .agents/skills (124+ skills), rules, workflows & subagents |
| 🟣 **Claude Code** | claude | Marketplace plugin, prompts, rules & unified memory |
| ⚡ **Cursor IDE** | cursor | .cursor/agents, rules & workflow definitions |
| 🟢 **Codex** | codex | Native Codex plugin & role definitions |
| 🪟 **OpenCode / Zed / Gemini / Kimi** | opencode / zed | Project-local adapters & workflow commands |

---

## 🧹 1-Click Cleanup / Self-Destruct

Wipe all generated AI files, graphs, and skill folders before Git commits or project handover:

#### 🪟 Windows Online 1-Liner:
`powershell
irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1 | iex
`
🔗 *Raw Link:* [ai-clean.ps1](https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1)

#### 🍎 macOS / Linux Online 1-Liner:
`ash
curl -fsSL https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.sh | bash
`
🔗 *Raw Link:* [ai-clean.sh](https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.sh)

#### 💻 Local Cleanup Command:
* **Windows:**
  `powershell
  .\scripts\ai-clean.ps1
  `
* **macOS / Linux:**
  `ash
  ./scripts/ai-clean.sh
  `

---

## 🔒 Why Stealth Mode?

| Feature | Standard .gitignore | 🥷 Stealth Mode (.git/info/exclude) |
| :--- | :---: | :---: |
| **Hides files locally** | ✅ Yes | ✅ Yes |
| **Creates Git file diffs** | ❌ **YES** (Modifies .gitignore) | ✅ **ZERO diffs** (Repo remains pristine) |
| **Visible to Clients / Teammates** | ❌ **YES** (Committed in repo history) | ✅ **100% INVISIBLE** (Never pushed) |
| **Works with git add .** | ✅ Yes | ✅ Yes (Completely ignored by Git) |

---

## 🚀 Pro-Tip: Permanent Terminal Aliases

Add these functions to your PowerShell Profile (
otepad C:\Users\Subham\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1):

`powershell
function init-ai {
    irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-stealth.ps1 | iex
}

function clean-ai {
    irm https://raw.githubusercontent.com/devSubhamRoy/graphify-ecc/main/scripts/ai-clean.ps1 | iex
}
`

Now in **any project**, just type:
* init-ai ➔ Setup stealth knowledge graph & skills.
* clean-ai ➔ Wipe all AI traces.

---

## 📄 License
MIT License © [devSubhamRoy](https://github.com/devSubhamRoy)
