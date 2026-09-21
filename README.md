# 🌟 Hub & Spoke Pattern For AI

<p align="center">
  <strong>Universal AI Engineering Governance & Multi-Agent Architecture</strong><br>
  <em>Một Nguồn Sự Thật Duy Nhất (Single Source of Truth) — Phục Vụ & Chuẩn Hóa Mọi AI Coding Assistant</em>
</p>

<p align="center">
  <a href="https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI"><img src="https://img.shields.io/badge/Architecture-Hub_%26_Spoke-blue?style=for-the-badge&logo=git" alt="Hub & Spoke Architecture"></a>
  <img src="https://img.shields.io/badge/Cursor-Supported-violet?style=for-the-badge" alt="Cursor">
  <img src="https://img.shields.io/badge/Google_Antigravity-Supported-4285F4?style=for-the-badge&logo=google" alt="Google Antigravity">
  <img src="https://img.shields.io/badge/Claude_Code-Supported-D97706?style=for-the-badge&logo=anthropic" alt="Claude Code">
  <img src="https://img.shields.io/badge/OpenAI_Codex-Supported-10A37F?style=for-the-badge&logo=openai" alt="OpenAI Codex">
  <img src="https://img.shields.io/badge/Windsurf-Supported-06B6D4?style=for-the-badge&logo=windsurf" alt="Windsurf">
  <img src="https://img.shields.io/badge/GitHub_Copilot-Supported-000000?style=for-the-badge&logo=github" alt="GitHub Copilot">
</p>

---

## 🌐 Chọn Ngôn Ngữ / Language Selection
- [🇻🇳 Hướng Dẫn Chi Tiết (Tiếng Việt)](#-tiếng-việt---hướng-dẫn-toàn-diện)
- [🇺🇸 Comprehensive Guide (English)](#-english---comprehensive-guide)

---

# 🇻🇳 TIẾNG VIỆT - HƯỚNG DẪN TOÀN DIỆN

## 📑 Mục Lục
1. [Nỗi Đau Thực Tế Của Vibe Coder (Pain Points)](#1-nỗi-đau-thực-tế-của-vibe-coder-pain-points)
2. [Cơ Chế & Sơ Đồ Hoạt Động Hub & Spoke](#2-cơ-chế--sơ-đồ-hoạt-động-hub--spoke)
3. [Chi Tiết Từng Quy Tắc (Deep Dive Rules)](#3-chi-tiết-từng-quy-tắc-deep-dive-rules)
4. [Hướng Dẫn Cài Đặt Nhanh (Installation)](#4-hướng-dẫn-cài-đặt-nhanh-installation)
5. [Quy Trình Sử Dụng & Đồng Bộ (Workflow)](#5-quy-trình-sử-dụng--đồng-bộ-workflow)
6. [Bảng Ma Trận Tương Thích (Compatibility Matrix)](#6-bảng-ma-trận-tương-thích-compatibility-matrix)
7. [Trải Nghiệm Thực Tế Khi Code (Day-to-Day AI Assistance)](#7-trải-nghiệm-thực-tế-khi-code-day-to-day-ai-assistance)

---

## 1. Nỗi Đau Thực Tế Của Vibe Coder (Pain Points)

Phong trào **Vibe Coding** giúp lập trình viên biến ý tưởng thành sản phẩm với tốc độ ánh sáng. Tuy nhiên, khi dự án lớn dần hoặc khi làm việc nhóm, các Vibe Coder luôn đối mặt với những "cơn ác mộng" sau:

- 🌪️ **Tự Ý Phá Vỡ Tech Stack**: Bạn đang dùng Tailwind & PostgreSQL, nhưng AI đột nhiên cài thêm Chakra UI, Prisma hoặc đổi sang Axios mà không hỏi trước.
- 🎭 **Mock Data Ảo Tưởng**: AI viết giao diện rất đẹp nhưng toàn gán `const users = [{id: 1, name: 'Fake'}]`. Khi kết nối API thật thì lỗi vỡ giao diện vì không xử lý `Loading`, `Error`, hay `Empty State`.
- 😴 **Code Lười Biếng (Lazy Completions)**: AI trả về các đoạn code dở dang kèm chú thích `// TODO: implement later` hoặc `// ... keep existing code ...` khiến bạn phải tự viết lại.
- 💣 **"Lừa" Xanh Test (Fake Tests)**: Khi Unit Test bị fail, thay vì sửa logic code, AI lại đi sửa file Test Assertion để ép test pass giả tạo.
- 📂 **File Phình To Khổng Lồ**: File vượt quá 500 - 1000 dòng, vi phạm Single Responsibility, khiến context window của AI bị tràn và sinh bug liên tục.
- 🔀 **Lệch Pha Giữa Các Công Cụ (AI Rule Drift)**: Bạn cấu hình quy tắc cho **Cursor** (`.cursorrules`), nhưng khi sang **Google Antigravity**, **Claude Code**, hay **Windsurf** thì AI quên sạch mọi quy ước.

👉 **Hub & Spoke Pattern For AI ra đời để giải quyết triệt để tất cả các vấn đề trên!**

---

## 2. Cơ Chế & Sơ Đồ Hoạt Động Hub & Spoke

Mô hình mượn ý tưởng từ kiến trúc **Trục Bánh Xe (Hub) & Nan Hoa (Spokes)**:

```text
                               ┌─────────────────────────────────────────┐
                               │        .rules-hub/ (THE HUB)            │
                               │     Nguồn Sự Thật Duy Nhất (SSoT)       │
                               │ (Core, Git, Frontend, Backend, QA, DB)  │
                               └────────────────────┬────────────────────┘
                                                    │
                   ┌────────────────────────────────┼────────────────────────────────┐
                   │                                │                                │
                   ▼                                ▼                                ▼
        ┌─────────────────────┐          ┌─────────────────────┐          ┌─────────────────────┐
        │     SPOKE: CURSOR   │          │  SPOKE: ANTIGRAVITY │          │ SPOKE: CLAUDE CODE  │
        │ .cursor/rules/*.mdc │          │.agents/rules/*.md   │          │      CLAUDE.md      │
        │ (Globs + Triggers)  │          │     AGENTS.md       │          │ (CLI Instructions)  │
        └─────────────────────┘          └─────────────────────┘          └─────────────────────┘
                   ▲                                ▲                                ▲
                   │                                │                                │
                   └────────────────────────────────┼────────────────────────────────┘
                                                    │
                               ┌────────────────────┴────────────────────┐
                               │   SPOKE: CODEX / WINDSURF / COPILOT     │
                               │ CODEX.md / .windsurfrules / .github/... │
                               └─────────────────────────────────────────┘
```

### 💡 Nguyên lý hoạt động:
1. **The Hub (`.rules-hub/`)**: Là **Nguồn sự thật duy nhất**. Toàn bộ tri thức, tiêu chuẩn kỹ thuật và lằn ranh đỏ được viết tại đây dưới định dạng Markdown chuẩn.
2. **The Spokes (Nan hoa)**: Các adapter tương thích với từng công cụ AI cụ thể:
   - Cursor đọc thư mục `.cursor/rules/*.mdc` (có frontmatter `globs`).
   - Google Antigravity IDE đọc `.agents/rules/*.md` và `AGENTS.md`.
   - Claude Code CLI đọc `CLAUDE.md`.
   - OpenAI Codex đọc `CODEX.md`.
   - Codeium Windsurf đọc `.windsurfrules`.
   - GitHub Copilot đọc `.github/copilot-instructions.md`.
3. **Cơ chế Đồng bộ 1 chạm (`sync-rules.sh`)**: Khi sửa đổi bất kỳ rule nào tại Hub, script sẽ tự động chuyển hóa và cập nhật đến tất cả các Spokes trong chớp mắt.

---

## 3. Chi Tiết Từng Quy Tắc (Deep Dive Rules)

Bộ governance này gồm 6 module quy chuẩn cốt lõi đặt trong [`.rules-hub/`](file:///.rules-hub):

| Tệp Quy Chuẩn | Vai Trò & Công Dụng Chi Tiết |
| :--- | :--- |
| **`00-core-discipline.md`** | **5 Lằn Ranh Đỏ Bất Biến**: Cấm đổi tech stack tùy tiện, cấm mock data trên production, cấm code dở dang `// TODO`, giới hạn file tối đa 250 dòng, cấm sửa test assertion giả tạo. Quy định **Execution Loop 5 bước**: *Spec First $\rightarrow$ Atomic Changes $\rightarrow$ Self-Verification*. |
| **`git-workflow.md`** | **Kỷ Luật Quản Lý Phiên Bản**: Bắt buộc chạy `git status` trước khi sửa code, quy chuẩn Conventional Commits (`feat:`, `fix:`, `refactor:`), cam kết commit nguyên tử (Atomic Commits), và quy trình Rollback khẩn cấp an toàn. |
| **`frontend-ui.md`** | **Tiêu Chuẩn UI/UX Đẳng Cấp**: Thiết kế Responsive Mobile-first, cấm màu mặc định vô hồn, typography hiện đại, micro-animations mượt mà, và bắt buộc xử lý đủ **4 trạng thái UI**: `Loading`, `Success`, `Error`, `Empty State`. |
| **`backend-api.md`** | **Kiến Trúc & Bảo Mật Backend**: Bắt buộc xác thực dữ liệu đầu vào (Zod/Pydantic), chuẩn hóa mã phản hồi HTTP (200, 201, 400, 401, 403, 404, 500), tách lớp nghiêm ngặt (Controller $\rightarrow$ Service $\rightarrow$ Repository), xử lý Database Transaction an toàn. |
| **`testing-qa.md`** | **Kiểm Thử & Đảm Bảo Chất Lượng**: Chuẩn cấu trúc AAA (Arrange - Act - Assert), cô lập môi trường test độc lập, bảo vệ tính toàn vẹn của bài test (khi test fail là do logic sai, cấm sửa test để qua mặt). |
| **`database-schema.md`** | **Quy Chuẩn Cơ Sở Dữ Liệu**: Bắt buộc dùng khóa chính UUIDv7 / ULID (tránh lộ Auto-increment ID), luôn có audit timestamps (`created_at`, `updated_at`), quy trình Migration an toàn không gây downtime hệ thống. |

---

## 4. Hướng Dẫn Cài Đặt Nhanh (Installation)

### 🎯 Cách 1: Cài đặt 1 dòng lệnh vào Dự Án Hiện Tại (Khuyên Dùng)
Mở Terminal tại thư mục dự án bạn đang làm việc và dán lệnh sau:
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
```
> *Lệnh trên sẽ tải tự động và cài đặt đầy đủ Hub + toàn bộ cấu hình AI vào dự án của bạn ngay lập tức.*

---

### 🌍 Cách 2: Cài đặt Toàn Cục (Global) cho toàn bộ máy tính
Áp dụng bộ quy tắc cho tất cả các dự án trên máy (Antigravity, Cursor, Claude Code):
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash -s -- --global
```

---

### 📦 Cách 3: Kéo về làm Dự Án Mới (Starter Kit)
```bash
git clone https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI.git my-awesome-project
cd my-awesome-project
```

---

## 5. Quy Trình Sử Dụng & Đồng Bộ (Workflow)

```text
[1. Chỉnh sửa Rule trong .rules-hub/] ──► [2. Chạy ./sync-rules.sh] ──► [3. Toàn bộ AI nhận Rule mới]
```

1. Mở file cần sửa trong `.rules-hub/` (ví dụ: bổ sung quy định frontend trong `frontend-ui.md`).
2. Chạy lệnh đồng bộ:
   ```bash
   ./sync-rules.sh
   ```
3. Mọi công cụ AI của bạn (Cursor, Antigravity, Claude, Windsurf, Copilot) sẽ lập tức áp dụng quy chuẩn mới mà không cần thao tác thêm!

---

## 6. Bảng Ma Trận Tương Thích (Compatibility Matrix)

| Nền Tảng AI | Tệp Cấu Hình Đích | Cơ Chế Nạp Quy Tắc |
| :--- | :--- | :--- |
| **Cursor IDE** | `.cursor/rules/*.mdc` | Tự động kích hoạt theo File Globs & Prompt Context |
| **Google Antigravity (AGY)** | `.agents/rules/*.md` + `AGENTS.md` | Tự động nạp vào Agent Workspace Context |
| **Claude Code CLI** | `CLAUDE.md` | Chỉ dẫn hệ thống khi khởi chạy CLI |
| **OpenAI Codex CLI** | `CODEX.md` | Đọc làm System Prompt & Workspace Directives |
| **Codeium Windsurf** | `.windsurfrules` | Cascade Engine Context Memory |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Nạp vào Copilot Chat & Code Completion |

---

## 7. Trải Nghiệm Thực Tế Khi Code (Day-to-Day AI Assistance)

Sau khi cài đặt **Hub & Spoke Pattern For AI**, bạn **không cần phải gõ lại prompt dài dòng mỗi lần chat**. Hệ thống quy tắc thông minh sẽ tự động hỗ trợ bạn theo từng ngữ cảnh lập trình thực tế:

* 🛡️ **Khi bạn code bình thường**: AI luôn nhớ kỷ luật cốt lõi (`00-core-discipline` & `git-workflow`) — tuyệt đối không đổi thư viện bừa bãi, không code lười `// TODO`, giữ file dưới 250 dòng và commit sạch sẽ.
* 🎨 **Khi bạn mở/sửa file UI (`.tsx`, `.jsx`, `.vue`, `.css`)**: Cursor/Antigravity chỉ nạp thêm `frontend-ui`, hoàn toàn bỏ qua DB/Backend để tiết kiệm token và tập trung tối đa làm giao diện xuất sắc, chuẩn Responsive Mobile-first, bắt buộc xử lý đủ 4 trạng thái (`Loading`, `Success`, `Error`, `Empty State`).
* ⚡ **Khi bạn làm API & Logic Backend (`routes/`, `controllers/`, `services/`)**: AI tự động kích hoạt `backend-api`, ép kiểm tra kiểu dữ liệu đầu vào nghiêm ngặt (Zod/Pydantic), chuẩn hóa HTTP status code (200, 201, 400, 401, 403, 404, 500) và tách tầng kiến trúc chuẩn.
* 🗄️ **Khi bạn thiết kế Database & Migrations (`schema.prisma`, `models/`, `migrations/`)**: AI tự động nạp `database-schema`, ép dùng khóa chính UUIDv7 / ULID, trường timestamps bắt buộc, và tạo migration an toàn chống downtime.
* 🧪 **Khi bạn chạy hoặc viết Test (`*.test.*`, `*.spec.*`)**: AI lập tức kích hoạt `testing-qa`, tuân thủ cấu trúc AAA (Arrange - Act - Assert), và **tuyệt đối không bao giờ "gian lận" sửa test assertion** khi test fail!

---
---

# 🇺🇸 ENGLISH - COMPREHENSIVE GUIDE

## 📑 Table of Contents
1. [The Vibe Coder Pain Points](#1-the-vibe-coder-pain-points)
2. [Hub & Spoke Architecture & Mechanism](#2-hub--spoke-architecture--mechanism)
3. [Deep Dive: Included Rules & Capabilities](#3-deep-dive-included-rules--capabilities)
4. [Quick Installation Guide](#4-quick-installation-guide)
5. [Workflow & Rule Synchronization](#5-workflow--rule-synchronization)
6. [Compatibility Matrix](#6-compatibility-matrix)
7. [Day-to-Day Developer Experience & AI Assistance](#7-day-to-day-developer-experience--ai-assistance)

---

## 1. The Vibe Coder Pain Points

The **Vibe Coding** movement enables developers to ship products at lightning speed. However, as codebases grow, developers inevitably run into severe friction:

- 🌪️ **Tech Stack Hijacking**: AI unexpectedly installs new UI packages, swaps ORMs, or introduces unwanted libraries without consent.
- 🎭 **Mock Data Hallucinations**: AI designs great UI components using hardcoded arrays `const data = [...]`, completely breaking on production due to missing `Loading`, `Error`, or `Empty` states.
- 😴 **Lazy Completions**: AI returns code with comments like `// TODO: implement later` or `// ... rest of code unchanged ...`, forcing you to write boilerplate manually.
- 💣 **Test Assertion Faking**: When unit tests fail, AI changes the test assertions to "cheat" the test suite instead of fixing the root bug.
- 📂 **Bloated Monolithic Files**: Files exceed 500+ lines, breaking Single Responsibility and overwhelming LLM context windows.
- 🔀 **AI Rule Drift Across Tools**: Rules configured for Cursor are ignored by Antigravity, Claude Code, or Windsurf.

👉 **Hub & Spoke Pattern For AI eliminates rule drift and enforces production-grade engineering standards across all AI assistants.**

---

## 2. Hub & Spoke Architecture & Mechanism

```text
                               ┌─────────────────────────────────────────┐
                               │        .rules-hub/ (THE HUB)            │
                               │     Single Source of Truth (SSoT)       │
                               │ (Core, Git, Frontend, Backend, QA, DB)  │
                               └────────────────────┬────────────────────┘
                                                    │
                   ┌────────────────────────────────┼────────────────────────────────┐
                   │                                │                                │
                   ▼                                ▼                                ▼
        ┌─────────────────────┐          ┌─────────────────────┐          ┌─────────────────────┐
        │     SPOKE: CURSOR   │          │  SPOKE: ANTIGRAVITY │          │ SPOKE: CLAUDE CODE  │
        │ .cursor/rules/*.mdc │          │.agents/rules/*.md   │          │      CLAUDE.md      │
        │ (Globs + Triggers)  │          │     AGENTS.md       │          │ (CLI Instructions)  │
        └─────────────────────┘          └─────────────────────┘          └─────────────────────┘
                   ▲                                ▲                                ▲
                   │                                │                                │
                   └────────────────────────────────┼────────────────────────────────┘
                                                    │
                               ┌────────────────────┴────────────────────┐
                               │   SPOKE: CODEX / WINDSURF / COPILOT     │
                               │ CODEX.md / .windsurfrules / .github/... │
                               └─────────────────────────────────────────┘
```

1. **The Hub (`.rules-hub/`)**: Houses raw, uncompromised engineering guidelines in standard Markdown.
2. **The Spokes**: Format-specific adapters tailored to each AI harness:
   - **Cursor**: `.cursor/rules/*.mdc` (includes frontmatter globs).
   - **Google Antigravity**: `.agents/rules/*.md` and `AGENTS.md`.
   - **Claude Code CLI**: `CLAUDE.md`.
   - **OpenAI Codex**: `CODEX.md`.
   - **Codeium Windsurf**: `.windsurfrules`.
   - **GitHub Copilot**: `.github/copilot-instructions.md`.
3. **One-Touch Synchronizer (`sync-rules.sh`)**: Propagates Hub updates to all Spokes in seconds.

---

## 3. Deep Dive: Included Rules & Capabilities

All governance rules live in [`.rules-hub/`](file:///.rules-hub):

| Rule File | Purpose & Impact |
| :--- | :--- |
| **`00-core-discipline.md`** | **5 Non-Negotiable Red Lines**: Tech stack immutability, zero mock data on production, zero lazy completions, strict 250-line file limit, test integrity protection. Enforces the **5-step Execution Loop**: *Spec First $\rightarrow$ Atomic Changes $\rightarrow$ Self-Verification*. |
| **`git-workflow.md`** | **Git & Version Control Discipline**: Mandatory pre-flight `git status` check, Conventional Commits standard (`feat:`, `fix:`, `refactor:`), atomic commits, and safe emergency rollback procedures. |
| **`frontend-ui.md`** | **Frontend & UI/UX Standards**: Mobile-first responsive design, modern curated color palettes, micro-animations, and mandatory 4-state handling (`Loading`, `Success`, `Error`, `Empty`). |
| **`backend-api.md`** | **Backend Architecture & Security**: Strict schema validation (Zod/Pydantic), standardized HTTP status codes, layered architecture (Controller $\rightarrow$ Service $\rightarrow$ Repository), safe DB transactions. |
| **`testing-qa.md`** | **Testing & QA Integrity**: AAA pattern (Arrange-Act-Assert), isolated test environments, absolute prohibition against modifying assertions to fake passing tests. |
| **`database-schema.md`** | **Database Governance**: Primary keys using UUIDv7 / ULID, mandatory audit timestamps (`created_at`, `updated_at`), zero-downtime migration standards. |

---

## 4. Quick Installation Guide

### 🎯 Option 1: 1-Line Install into Current Project (Recommended)
Open Terminal inside your project directory and run:
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
```

---

### 🌍 Option 2: Global Installation for Entire Machine
Apply rules globally across all repositories on your system:
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash -s -- --global
```

---

### 📦 Option 3: Clone as a New Project Starter Kit
```bash
git clone https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI.git my-awesome-project
cd my-awesome-project
```

---

## 5. Workflow & Rule Synchronization

```text
[1. Modify Rule in .rules-hub/] ──► [2. Run ./sync-rules.sh] ──► [3. All AI Agents Updated]
```

1. Edit or add files in `.rules-hub/`.
2. Run synchronization:
   ```bash
   ./sync-rules.sh
   ```
3. All AI harnesses automatically receive the updated rules!

---

## 6. Compatibility Matrix

| AI Tool | Target Config File | Activation Method |
| :--- | :--- | :--- |
| **Cursor IDE** | `.cursor/rules/*.mdc` | Automatic via Globs & Rules Selector |
| **Google Antigravity (AGY)** | `.agents/rules/*.md` + `AGENTS.md` | Workspace Context & System Rules |
| **Claude Code CLI** | `CLAUDE.md` | CLI System Instructions |
| **OpenAI Codex CLI** | `CODEX.md` | System Prompt / Workspace Rules |
| **Codeium Windsurf** | `.windsurfrules` | Cascade Engine Context Memory |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Chat & Code Completion Directives |

---

## 7. Day-to-Day Developer Experience & AI Assistance

Once installed, you **never need to repeat complex system prompts in every chat session**. The context-aware rule system automatically supports you based on real-time developer actions:

* 🛡️ **During General Coding**: AI constantly remembers core discipline (`00-core-discipline` & `git-workflow`) — zero arbitrary tech changes, zero lazy `// TODO` shortcuts, keeping files under 250 lines, and making clean atomic commits.
* 🎨 **When Opening/Editing UI Files (`.tsx`, `.jsx`, `.vue`, `.css`)**: Cursor/Antigravity selectively loads `frontend-ui`, ignoring backend/DB to save token context and focus purely on creating top-tier UI with mandatory 4-state handling (`Loading`, `Success`, `Error`, `Empty`).
* ⚡ **When Building Backend & APIs (`routes/`, `controllers/`, `services/`)**: AI automatically triggers `backend-api`, enforcing strict schema validation (Zod/Pydantic), standard HTTP response codes, and clean layered architecture.
* 🗄️ **When Designing Database & Migrations (`schema.prisma`, `models/`, `migrations/`)**: AI activates `database-schema`, enforcing UUIDv7/ULID primary keys, audit timestamps, and zero-downtime migrations.
* 🧪 **When Writing or Running Tests (`*.test.*`, `*.spec.*`)**: AI immediately activates `testing-qa`, enforcing the AAA pattern, and **strictly forbids altering test assertions to fake passing tests**!

---

## 🤝 Contributing & License

Contributions, new AI spokes, and feedback are warmly welcomed! Feel free to submit an Issue or Pull Request on [GitHub](https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI).

Distributed under the **MIT License**.
