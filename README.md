# 🌟 Hub & Spoke Pattern For AI

<p align="center">
  <strong>The Universal AI Engineering Rules & Governance Architecture for Modern Development</strong><br>
  <em>"One Single Source of Truth — Serving Every AI Coding Assistant Seamlessly"</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Architecture-Hub_%26_Spoke-blue?style=for-the-badge&logo=git" alt="Hub & Spoke Architecture">
  <img src="https://img.shields.io/badge/Cursor-Supported-violet?style=for-the-badge" alt="Cursor">
  <img src="https://img.shields.io/badge/Google_Antigravity-Supported-4285F4?style=for-the-badge&logo=google" alt="Google Antigravity">
  <img src="https://img.shields.io/badge/Claude_Code-Supported-D97706?style=for-the-badge&logo=anthropic" alt="Claude Code">
  <img src="https://img.shields.io/badge/OpenAI_Codex-Supported-10A37F?style=for-the-badge&logo=openai" alt="OpenAI Codex">
  <img src="https://img.shields.io/badge/Windsurf-Supported-06B6D4?style=for-the-badge" alt="Windsurf">
  <img src="https://img.shields.io/badge/GitHub_Copilot-Supported-000000?style=for-the-badge&logo=github" alt="GitHub Copilot">
</p>

---

## 🌐 Language / Ngôn ngữ
- [English Documentation](#-english-guide)
- [Hướng Dẫn Tiếng Việt](#-hướng-dẫn-tiếng-việt)

---

# 🇺🇸 English Guide

## 💡 The Problem & The Hub-and-Spoke Solution

### ⚠️ The Problem: AI Rule Drift & Fragmentation
Modern engineering teams use multiple AI coding agents: **Cursor**, **Google Antigravity (AGY)**, **Anthropic Claude Code CLI**, **OpenAI Codex**, **Windsurf**, and **GitHub Copilot**. 

Each tool requires rules in its own format (`.cursor/rules/*.mdc`, `.agents/rules/*.md`, `CLAUDE.md`, `CODEX.md`, `.windsurfrules`, `.github/copilot-instructions.md`). Maintaining rules separately across 6+ formats leads to:
1. **Rule Drift**: Changes made for Cursor are forgotten in Claude Code or Antigravity.
2. **Inconsistent AI Behavior**: Different team members get conflicting code styles and standards.
3. **High Maintenance Overhead**: Repeating updates across dozens of config files.

---

### 🏛️ The Architecture: Hub & Spoke Pattern

The **Hub & Spoke Pattern** solves this by establishing **`.rules-hub/`** as the **Single Source of Truth (The Hub)**. All AI harnesses act as **Spokes (Nan Hoa)** that inherit, adapt, and synchronize rules automatically.

```text
                               ┌──────────────────────────────┐
                               │   .rules-hub/ (THE HUB)      │
                               │  Single Source of Truth      │
                               └──────────────┬───────────────┘
                                              │
               ┌──────────────────────────────┼──────────────────────────────┐
               │                              │                              │
               ▼                              ▼                              ▼
        ┌──────────────┐              ┌──────────────┐              ┌──────────────┐
        │    CURSOR    │              │ ANTIGRAVITY  │              │ CLAUDE CODE  │
        │.cursor/rules/│              │.agents/rules/│              │  CLAUDE.md   │
        │   (*.mdc)    │              │  AGENTS.md   │              │              │
        └──────────────┘              └──────────────┘              └──────────────┘
               ▲                              ▲                              ▲
               │                              │                              │
               └──────────────────────────────┼──────────────────────────────┘
                                              │
                               ┌──────────────┴──────────────┐
                               │  CODEX / WINDSURF / COPILOT │
                               │  CODEX.md / .windsurfrules  │
                               │  .github/copilot-...        │
                               └─────────────────────────────┘
```

---

## ⚡ Quick Start & Installation

### Option 1: One-Line Install into Any Existing Project
Open your terminal inside your project directory and run:

```bash
git clone https://github.com/YOUR_USERNAME/hub-and-spoke-ai-rules.git /tmp/hub-spoke && \
/tmp/hub-spoke/install.sh . && \
rm -rf /tmp/hub-spoke
```

---

### Option 2: Clone & Install into a Target Directory
```bash
# 1. Clone this repository
git clone https://github.com/YOUR_USERNAME/hub-and-spoke-ai-rules.git

# 2. Navigate to repo
cd "Hub & Spoke Pattern For AI"

# 3. Install directly into your project
./install.sh /path/to/your/awesome-project
```

---

### Option 3: Global Machine-wide Installation
Install these governance rules globally so every new project in your machine automatically inherits them:

```bash
./install.sh --global
```
*Installs rules to `~/.gemini/config/rules` (Antigravity), `~/.cursor/rules` (Cursor), and `~/.claude/` (Claude).*

---

## 📂 Repository Structure

```text
├── .rules-hub/                         <-- [THE HUB] Single Source of Truth
│   ├── 00-core-discipline.md           <-- 5 Non-Negotiable Red Lines & Core Discipline
│   ├── git-workflow.md                 <-- Git Safety, Conventional Commits, Rollback
│   ├── frontend-ui.md                  <-- UI/UX Standards, 4 States (Loading/Error/Empty/Success)
│   ├── backend-api.md                  <-- Strict Validation, HTTP Status, Clean Architecture
│   ├── testing-qa.md                   <-- AAA Pattern, Test Integrity Protection
│   └── database-schema.md              <-- UUIDv7, Timestamps, Safe Migrations
│
├── .cursor/rules/*.mdc                 <-- [SPOKE] Cursor AI (with globs & triggers)
├── .agents/rules/*.md                  <-- [SPOKE] Google Antigravity (AGY IDE & CLI)
├── .github/copilot-instructions.md     <-- [SPOKE] GitHub Copilot
├── AGENTS.md                           <-- Antigravity Root Entry Rule
├── CLAUDE.md                           <-- Anthropic Claude Code CLI Root Rule
├── CODEX.md                            <-- OpenAI Codex Root Rule
├── .windsurfrules                      <-- Codeium Windsurf Root Rule
├── install.sh                          <-- Automated Project & Global Installer
├── sync-rules.sh                       <-- Automated Synchronizer from Hub to Spokes
└── README.md                           <-- Complete Universal Manual
```

---

## 🔄 Maintaining & Synchronizing Rules

Whenever you update or add new rules:
1. **Only edit or create files inside `.rules-hub/`**.
2. Run the sync command:
   ```bash
   ./sync-rules.sh
   ```
3. All AI platform rules (`.cursor/`, `.agents/`, root markdown files) are synchronized in seconds!

---

## 🛡️ The 5 Non-Negotiable Core Rules

1. 🚫 **Tech Stack Immutability**: Never introduce, swap, or upgrade dependencies without explicit permission.
2. 🚫 **No Mock Data in Production**: Real APIs, DBs, and env vars only. Always handle 4 UI states: `Loading`, `Success`, `Error`, `Empty`.
3. 🚫 **No Lazy Completions**: Never use `// TODO: implement later` or omitted snippets. Full code only.
4. 📏 **File Length Limit (250 Lines)**: Single Responsibility principle. Proactively modularize into subcomponents when exceeding 250 lines.
5. 🛡️ **Test Integrity Protection**: When tests fail, fix the implementation. Never alter test assertions to fake passing tests.

---
---

# 🇻🇳 Hướng Dẫn Tiếng Việt

## 💡 Vấn Đề Thực Tế & Giải Pháp Kiến Trúc Hub & Spoke

### ⚠️ Vấn đề: Phân Mảnh & Lệch Chuẩn Quy Tắc AI (Rule Drift)
Trong quy trình phát triển hiện đại, lập trình viên và các nhóm công nghệ thường sử dụng đan xen nhiều công cụ AI: **Cursor**, **Google Antigravity (AGY)**, **Claude Code CLI**, **OpenAI Codex**, **Windsurf**, và **GitHub Copilot**.

Mỗi công cụ lại yêu cầu vị trí và định dạng quy tắc khác nhau:
- **Cursor**: Cần `.cursor/rules/*.mdc` kèm frontmatter globs.
- **Antigravity**: Cần `.agents/rules/*.md` và `AGENTS.md`.
- **Claude Code**: Cần `CLAUDE.md`.
- **OpenAI Codex**: Cần `CODEX.md`.
- **Windsurf**: Cần `.windsurfrules`.
- **GitHub Copilot**: Cần `.github/copilot-instructions.md`.

Nếu duy trì thủ công từng file riêng lẻ, quy tắc sẽ nhanh chóng bị **lệch pha (Rule Drift)**, dẫn đến việc AI sinh code không đồng nhất, phá vỡ kiến trúc dự án và tốn thời gian cấu hình lại từ đầu.

---

### 🏛️ Giải Pháp: Kiến Trúc Trục & Nan Hoa (Hub & Spoke)

Mô hình **Hub & Spoke Pattern** biến thư mục **`.rules-hub/`** thành **Trục Trung Tâm (The Hub - Nguồn Sự Thật Duy Nhất)**. Mọi công cụ AI đóng vai trò là các **Nan Hoa (Spokes)** được cấp phát và đồng bộ tự động từ Hub:

1. **Chỉ cần sửa 1 nơi duy nhất** tại `.rules-hub/`.
2. **Chạy `./sync-rules.sh`** để tự động phân phối sang toàn bộ 6 nền tảng AI.
3. **Cài đặt 1 lệnh** vào bất kỳ dự án mới nào hoặc cài đặt toàn cục (Global) cho toàn bộ máy tính.

---

## ⚡ Hướng Dẫn Cài Đặt & Sử Dụng Nhanh

### Cách 1: Cài đặt 1 dòng lệnh vào bất kỳ dự án nào đang mở
Mở terminal tại thư mục dự án của bạn và chạy:

```bash
git clone https://github.com/YOUR_USERNAME/hub-and-spoke-ai-rules.git /tmp/hub-spoke && \
/tmp/hub-spoke/install.sh . && \
rm -rf /tmp/hub-spoke
```

---

### Cách 2: Clone về máy và cài đặt vào thư mục chỉ định
```bash
# 1. Kéo repository về máy
git clone https://github.com/YOUR_USERNAME/hub-and-spoke-ai-rules.git

# 2. Truy cập vào thư mục
cd "Hub & Spoke Pattern For AI"

# 3. Chạy file cài đặt tới dự án bạn muốn áp dụng
./install.sh /duong-dan/toi/du-an-cua-ban
```

---

### Cách 3: Cài đặt Toàn Cục (Global) cho toàn máy tính
Nếu muốn toàn bộ các dự án trên máy tính của bạn tự động áp dụng quy chuẩn này:

```bash
./install.sh --global
```
*Script sẽ tự động sao chép vào cấu hình Global của Google Antigravity (`~/.gemini/config/rules/`), Cursor (`~/.cursor/rules/`), và Claude Code.*

---

## 📁 Danh Mục Quy Chuẩn Trong `.rules-hub/`

| Tệp Quy Chuẩn | Mục Đích & Vai Trò |
| :--- | :--- |
| **`00-core-discipline.md`** | 5 Lằn ranh đỏ bất biến, kỷ luật Senior Principal Architect, quy trình Execution Loop 5 bước. |
| **`git-workflow.md`** | Kiểm tra `git status` trước khi làm, Conventional Commits nguyên tử, quy trình Rollback an toàn. |
| **`frontend-ui.md`** | Chuẩn UI/UX cao cấp, thiết kế Responsive Mobile-first, xử lý bắt buộc 4 trạng thái UI (Loading, Error, Empty, Success). |
| **`backend-api.md`** | Validation dữ liệu chặt chẽ (Zod / Pydantic), chuẩn hóa HTTP status code, phân tầng Controller/Service/Repo. |
| **`testing-qa.md`** | Quy chuẩn AAA (Arrange-Act-Assert), bảo vệ tính toàn vẹn của Test, cấm sửa assertion giả tạo. |
| **`database-schema.md`** | Chuẩn khóa chính UUIDv7 / ULID, trường Audit bắt buộc (`created_at`, `updated_at`), quy trình Migration an toàn. |

---

## 🛠️ Quy Trình Thêm Quy Tắc Mới (Workflow)

```text
[Thêm/Sửa Quy Tắc Mới Tại .rules-hub/] ──► [Chạy ./sync-rules.sh] ──► [Toàn Bộ AI Được Cập Nhật Tức Thì]
```

1. Tạo hoặc chỉnh sửa file `.md` trong thư mục `.rules-hub/`.
2. Chạy lệnh:
   ```bash
   ./sync-rules.sh
   ```
3. Mọi công cụ AI trên máy và trong dự án sẽ lập tức tiếp nhận quy chuẩn mới nhất mà không cần cấu hình thêm!

---

## 📊 Bảng Tương Thích Các Nền Tảng AI

| Nền Tảng AI | Tệp Cấu Hình Đích | Cơ Chế Kích Hoạt |
| :--- | :--- | :--- |
| **Cursor IDE** | `.cursor/rules/*.mdc` | Tự động kích hoạt theo Globs & Rules selector |
| **Google Antigravity (AGY)** | `.agents/rules/*.md` + `AGENTS.md` | Tự động nạp vào workspace & memory context |
| **Claude Code CLI** | `CLAUDE.md` | Đọc trực tiếp khi khởi chạy CLI |
| **OpenAI Codex CLI** | `CODEX.md` | Đọc làm chỉ dẫn hệ thống (System Prompt) |
| **Codeium Windsurf** | `.windsurfrules` | Nạp vào bộ nhớ ngữ cảnh của Cascade |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Nạp vào Chat & Completion Engine |

---

## 🤝 Đóng Góp & Phát Triển (Contributing)

Mọi đóng góp, tối ưu quy chuẩn hoặc bổ sung nan hoa cho các công cụ AI mới đều rất được hoan nghênh! Hãy mở một Pull Request hoặc Issue trên GitHub.

---

<p align="center">
  Được xây dựng với sự chuẩn mực bởi <strong>Senior AI Engineering Community</strong> 🚀
</p>
