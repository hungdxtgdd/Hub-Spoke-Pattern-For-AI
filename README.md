# 🌟 Hub & Spoke Pattern For AI

<p align="center">
  <strong>The Universal AI Engineering Rules & Governance Architecture for Modern Development</strong><br>
  <em>"Một Nguồn Sự Thật Duy Nhất — Phục Vụ Tự Động & Đồng Bộ Mọi AI Coding Assistant"</em>
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

## 🌐 Mục lục / Table of Contents
- [🇻🇳 Hướng Dẫn Cài Đặt & Sử Dụng (Tiếng Việt)](#-hướng-dẫn-cài-đặt--sử-dụng-tiếng-việt)
- [🇺🇸 English Quick Start & Architecture](#-english-guide)

---

# 🇻🇳 Hướng Dẫn Cài Đặt & Sử Dụng (Tiếng Việt)

## ⚡ Cài Đặt Nhanh Vào Dự Án (Chỉ 1 Dòng Lệnh)

Bạn muốn tích hợp bộ quy tắc này vào dự án của mình? Hãy mở **Terminal** tại thư mục dự án của bạn và chạy **1 lệnh duy nhất**:

### 🎯 Cách 1: Cài đặt trực tiếp vào dự án hiện tại (Khuyên dùng)
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
```
> *(Lệnh trên sẽ tự động kéo toàn bộ rules về và cài thẳng vào thư mục dự án của bạn, hỗ trợ ngay lập tức Cursor, Antigravity, Claude Code, Windsurf, Copilot).*

---

### 🌍 Cách 2: Cài đặt Toàn Cục (Global) cho toàn bộ máy tính
Nếu bạn muốn tất cả các dự án trên máy tính tự động áp dụng quy tắc này:
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash -s -- --global
```

---

### 📦 Cách 3: Kéo về và sử dụng như một Starter Kit dự án mới
```bash
# Clone dự án về máy
git clone https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI.git my-new-project

# Di chuyển vào dự án và bắt đầu code
cd my-new-project
```

---

## 🏛️ Cơ Chế Hoạt Động (Hub & Spoke Là Gì?)

```text
                               ┌──────────────────────────────┐
                               │   .rules-hub/ (THE HUB)      │
                               │  Nguồn Sự Thật Duy Nhất      │
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

1. **Thư mục `.rules-hub/` (Trục trung tâm - The Hub)**: Là nơi duy nhất chứa nội dung quy tắc chuẩn của team.
2. **Các thư mục adapter (Nan hoa - The Spokes)**: Tự động phân phối quy tắc đến từng công cụ AI:
   - **Cursor**: Đọc `.cursor/rules/*.mdc`
   - **Google Antigravity**: Đọc `.agents/rules/*.md` và `AGENTS.md`
   - **Claude Code CLI**: Đọc `CLAUDE.md`
   - **OpenAI Codex CLI**: Đọc `CODEX.md`
   - **Codeium Windsurf**: Đọc `.windsurfrules`
   - **GitHub Copilot**: Đọc `.github/copilot-instructions.md`

### 🔄 Cách sửa đổi & Thêm quy tắc mới:
1. Bạn chỉ cần sửa hoặc tạo file `.md` trong thư mục **`.rules-hub/`**.
2. Chạy lệnh:
   ```bash
   ./sync-rules.sh
   ```
3. Toàn bộ các công cụ AI trong dự án sẽ được đồng bộ ngay lập tức!

---

## 🛡️ 5 Lằn Ranh Đỏ Bất Biến (Core Discipline)

1. 🚫 **Tech Stack Immutability**: Tuyệt đối không tự ý thêm, sửa, đổi thư viện nếu chưa có sự đồng ý rõ ràng.
2. 🚫 **No Mock Data in Production**: Luôn kết nối API thật, Database thật hoặc `.env`. Bắt buộc xử lý 4 trạng thái UI: `Loading`, `Success`, `Error`, `Empty`.
3. 🚫 **No Lazy Completions**: Cấm viết code cắt gọt `// TODO: implement later` hoặc bỏ lửng hàm.
4. 📏 **File Length Limit (250 Dòng)**: Tuân thủ Single Responsibility. Tách file thành subcomponents/helpers khi vượt 250 dòng.
5. 🛡️ **Test Integrity Protection**: Khi test fail, phải sửa code logic. Tuyệt đối không sửa assertion để "lừa" test xanh.

---
---

# 🇺🇸 English Guide

## ⚡ Quick Start (1-Line Installation)

To integrate this governance architecture into any existing project, open your **Terminal** inside your project directory and run:

### 🎯 Option 1: Install into Current Project (Recommended)
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
```

---

### 🌍 Option 2: Install Globally for Your Entire Machine
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash -s -- --global
```

---

### 📦 Option 3: Clone as a New Project Starter Kit
```bash
git clone https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI.git my-new-project
cd my-new-project
```

---

## 📂 Directory Structure Breakdown

```text
├── .rules-hub/                         <-- [THE HUB] Single Source of Truth
│   ├── 00-core-discipline.md           <-- 5 Non-Negotiable Red Lines & Core Discipline
│   ├── git-workflow.md                 <-- Git Safety, Conventional Commits, Atomic Commits
│   ├── frontend-ui.md                  <-- UI/UX Standards & 4 Mandatory UI States
│   ├── backend-api.md                  <-- Strict Validation (Zod/Pydantic) & HTTP Status
│   ├── testing-qa.md                   <-- AAA Pattern & Test Integrity Protection
│   └── database-schema.md              <-- UUIDv7, Timestamps, Safe Migrations
│
├── .cursor/rules/*.mdc                 <-- [SPOKE] Cursor AI adapter (globs & triggers)
├── .agents/rules/*.md                  <-- [SPOKE] Google Antigravity adapter
├── .github/copilot-instructions.md     <-- [SPOKE] GitHub Copilot adapter
├── AGENTS.md                           <-- Antigravity Root Rule
├── CLAUDE.md                           <-- Anthropic Claude Code CLI Root Rule
├── CODEX.md                            <-- OpenAI Codex Root Rule
├── .windsurfrules                      <-- Codeium Windsurf Root Rule
├── install.sh                          <-- Automated 1-Line Installer
├── sync-rules.sh                       <-- Automated Hub-to-Spokes Synchronizer
└── README.md                           <-- Universal Manual
```

---

## 📊 Compatibility Matrix

| AI Tool | Target Configuration | Activation Mode |
| :--- | :--- | :--- |
| **Cursor IDE** | `.cursor/rules/*.mdc` | Automatic via Globs & AlwaysApply |
| **Google Antigravity** | `.agents/rules/*.md` + `AGENTS.md` | Workspace Context & System Rules |
| **Claude Code CLI** | `CLAUDE.md` | CLI System Instructions |
| **OpenAI Codex CLI** | `CODEX.md` | System Prompt / Workspace Rules |
| **Codeium Windsurf** | `.windsurfrules` | Cascade Context Memory |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Chat & Completion Directives |

---

## 🤝 Contributing & License

Contributions, feedback, and new AI spokes are warmly welcomed! Feel free to open an Issue or Pull Request on [GitHub](https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI).

Distributed under the MIT License.
