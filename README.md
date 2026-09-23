# 🌟 Hub & Spoke Pattern For AI

<p align="center">
  <strong>Universal AI Engineering Governance, Spec-Driven Development (SDD) & Multi-Agent Architecture</strong><br>
  <em>Một Nguồn Sự Thật Duy Nhất (Single Source of Truth) — Phục Vụ & Chuẩn Hóa Mọi AI Coding Assistant</em>
</p>

<p align="center">
  <a href="https://github.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI"><img src="https://img.shields.io/badge/Architecture-Hub_%26_Spoke-blue?style=for-the-badge&logo=git" alt="Hub & Spoke Architecture"></a>
  <img src="https://img.shields.io/badge/Spec--Driven_Development-2026_Standard-brightgreen?style=for-the-badge" alt="SDD Framework">
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
1. [Nỗi Đau Thực Tế Của Vibe Coder & "Bức Tường Tuần Thứ 3"](#1-nỗi-đau-thực-tế-của-vibe-coder--bức-tường-tuần-thứ-3)
2. [Cơ Chế & Sơ Đồ Hoạt Động Hub & Spoke](#2-cơ-chế--sơ-đồ-hoạt-động-hub--spoke)
3. [✨ Tính Năng Mới: Spec-Driven Development (SDD) & Hệ Thống 6-File Context](#3--tính-năng-mới-spec-driven-development-sdd--hệ-thống-6-file-context)
4. [Chi Tiết Từng Quy Tắc Quản Trị (Deep Dive Rules)](#4-chi-tiết-từng-quy-tắc-quản-trị-deep-dive-rules)
5. [Hướng Dẫn Cài Đặt Nhanh (Installation)](#5-hướng-dẫn-cài-đặt-nhanh-installation)
6. [Quy Trình Sử Dụng & Đồng Bộ (Workflow)](#6-quy-trình-sử-dụng--đồng-bộ-workflow)
7. [Bảng Ma Trận Tương Thích (Compatibility Matrix)](#7-bảng-ma-trận-tương-thích-compatibility-matrix)
8. [Trải Nghiệm Thực Tế Khi Code (Day-to-Day AI Assistance)](#8-trải-nghiệm-thực-tế-khi-code-day-to-day-ai-assistance)

---

## 1. Nỗi Đau Thực Tế Của Vibe Coder & "Bức Tường Tuần Thứ 3"

Phong trào **Vibe Coding** giúp bạn biến ý tưởng thành sản phẩm với tốc độ ánh sáng. Tuy nhiên, nếu không có kiến trúc và đặc tả chuẩn, mọi dự án Vibe Coding đều đâm vào **"Bức tường tuần thứ 3" (The Week 3 Wall)**:

- 🌪️ **Context Drift & Mất Trí Nhớ**: Sau vài ngày, AI quên sạch các quyết định kiến trúc đã thống nhất trước đó. Một tính năng mới làm gãy 3 tính năng cũ.
- 🚫 **Tự Ý Phá Vỡ Tech Stack**: Bạn đang dùng Tailwind & PostgreSQL, nhưng AI đột nhiên cài thêm Chakra UI, Prisma hoặc đổi sang Axios mà không hỏi trước.
- 🎭 **Mock Data Ảo Tưởng**: AI viết giao diện rất đẹp nhưng toàn gán `const users = [{id: 1, name: 'Fake'}]`. Khi kết nối API thật thì lỗi vỡ giao diện vì không xử lý `Loading`, `Error`, hay `Empty State`.
- 😴 **Code Lười Biếng (Lazy Completions)**: AI trả về các đoạn code dở dang kèm chú thích `// TODO: implement later` hoặc `// ... keep existing code ...` khiến bạn phải tự viết lại.
- 💣 **"Lừa" Xanh Test (Fake Tests)**: Khi Unit Test bị fail, thay vì sửa logic code, AI lại đi sửa file Test Assertion để ép test pass giả tạo.
- 📂 **File Phình To Khổng Lồ**: File vượt quá 500 - 1000 dòng, vi phạm Single Responsibility, khiến context window của AI bị tràn và sinh bug liên tục.

👉 **Hub & Spoke Pattern For AI kết hợp Spec-Driven Development giải quyết triệt để tất cả các vấn đề trên!**

---

## 2. Cơ Chế & Sơ Đồ Hoạt Động Hub & Spoke

Mô hình mượn ý tưởng từ kiến trúc **Trục Bánh Xe (Hub) & Nan Hoa (Spokes)**:

```text
                               ┌─────────────────────────────────────────┐
                               │        .rules-hub/ (THE HUB)            │
                               │  • Master Rules (00-core, backend, ...) │
                               │  • SDD Template (/context-template/)   │
                               └────────────────────┬────────────────────┘
                                                    │
                                           [ sync-rules.sh ]
                                                    │
                   ┌────────────────────────────────┼────────────────────────────────┐
                   ▼                                ▼                                ▼
       ┌───────────────────────┐        ┌───────────────────────┐        ┌───────────────────────┐
       │     SPOKE: CURSOR     │        │   SPOKE: ANTIGRAVITY  │        │   SPOKE: CLAUDE CODE  │
       │ .cursor/rules/*.mdc   │        │ .agents/rules/*.md    │        │       CLAUDE.md       │
       │ .cursor/context-tmpl/ │        │ .agents/context-tmpl/ │        │                       │
       └───────────────────────┘        └───────────────────────┘        └───────────────────────┘
```

---

## 3. ✨ Tính Năng Mới: Spec-Driven Development (SDD) & Hệ Thống 6-File Context

Được lấy cảm hứng và chuẩn hóa từ phương pháp làm việc của **Principal/Senior Engineers (Masterclass 2026)**: *Lập trình viên thiết kế hệ thống và đặt ra ràng buộc; AI là động cơ thực thi*.

### 📁 Bộ Khung 6 Tệp Context Chuẩn (`/context/`)

Mỗi dự án mới đều được trang bị bộ neo ngữ cảnh chuẩn mực trong thư mục `/context/`:

| Tệp Context | Trách Nhiệm & Vai Trò Then Chốt |
| :--- | :--- |
| **`01-project-overview.md`** | **Tầm Nhìn & Phạm Vi**: Mục tiêu đo lường được, Core User Flow từ A-Z, và danh sách **No-Gos (Out-of-Scope)** nghiêm cấm AI tự ý code vượt quyền. |
| **`02-architecture.md`** | **Bản Vẽ Kỹ Thuật**: Phân vai từng công nghệ trong stack, System Boundaries (API vs Background Workers), Hybrid Storage Model, và các **Invariants (Luật bất biến)**. |
| **`03-code-standards.md`** | **Chuẩn Lập Trình**: TypeScript Strict (CẤM `any`), Server vs Client Components (`use client`), giới hạn file <= 250 dòng, bắt buộc dùng Design Tokens. |
| **`04-ai-workflow-rules.md`** | **Kỷ Luật Của Agent**: Chỉ làm 1 Unit/Spec tại một thời điểm, hỏi ngay khi gặp quyết định kiến trúc mơ hồ. |
| **`05-ui-context.md`** | **Design System Tokens**: Bảng màu chuẩn (Dark/Light Mode), Typography, Spacing, Border Radius. |
| **`06-progress-tracker.md`** | **Bộ Nhớ Sống Duy Nhất**: File duy nhất cập nhật liên tục qua các phiên làm việc — lưu Phase hiện tại, Active Spec, Completed Units và Architectural Decision Log (ADR). |
| **`feature-specs/*.md`** | **Đặc Tả Tính Năng Bẻ Nhỏ**: Mỗi tính năng lớn được chia thành các file Spec độc lập (`01-design-system.md`, `02-auth.md`) kèm Acceptance Checklist khép kín. |

---

### 🚀 Quy Trình Thực Thi 4 Bước (SDD Workflow)

```text
[1. Ý TƯỞNG SƠ KHAI]
        │
        ▼
[2. PHỎNG VẤN KIẾN TRÚC (AI Planning Chat)]
    User & AI trao đổi, phản biện: Core flows, Tech stack, Invariants, No-Gos
        │
        ▼
[3. TỰ ĐỘNG ĐIỀN CONTEXT & BẺ FEATURE SPECS]
    AI tự động cập nhật toàn bộ quyết định vào 6 file trong `/context/`
        │
        ▼
[4. VÒNG LẶP THỰC THI KHÉP KÍN (Spec Loop)]
    "Đọc @spec-file ➔ Set Progress [IN-PROGRESS] ➔ Code ➔ Verify Checklist ➔ Set [COMPLETED] & Ghi ADR"
```

---

## 4. Chi Tiết Từng Quy Tắc Quản Trị (Deep Dive Rules)

Bộ governance này gồm 7 module quy chuẩn cốt lõi đặt trong [`.rules-hub/`](file:///.rules-hub):

| Tệp Quy Chuẩn | Vai Trò & Công Dụng Chi Tiết |
| :--- | :--- |
| **`spec-driven-development.md`** | **Quy chuẩn SDD & Context 6 Tệp**: Cơ chế tự động scaffold `/context/`, quy trình phỏng vấn kiến trúc trước khi code, và vòng lặp thực thi Unit khép kín. |
| **`00-core-discipline.md`** | **5 Lằn Ranh Đỏ Bất Biến**: Cấm đổi tech stack tùy tiện, cấm mock data trên production, cấm code dở dang `// TODO`, giới hạn file tối đa 250 dòng, cấm sửa test assertion giả tạo. |
| **`git-workflow.md`** | **Kỷ Luật Quản Lý Phiên Bản**: Bắt buộc chạy `git status` trước khi sửa code, quy chuẩn Conventional Commits (`feat:`, `fix:`, `refactor:`), cam kết commit nguyên tử (Atomic Commits). |
| **`frontend-ui.md`** | **Tiêu Chuẩn UI/UX Đẳng Cấp**: Responsive Mobile-first, cấm màu hardcode vô hồn, typography hiện đại, và bắt buộc xử lý đủ **4 trạng thái UI**: `Loading`, `Success`, `Error`, `Empty State`. |
| **`backend-api.md`** | **Kiến Trúc & Bảo Mật Backend**: Xác thực dữ liệu đầu vào (Zod/Pydantic), chuẩn hóa HTTP status code, tách lớp nghiêm ngặt (Controller $\rightarrow$ Service $\rightarrow$ Repository). |
| **`database-schema.md`** | **Quy Chuẩn Cơ Sở Dữ Liệu**: Khóa chính UUIDv7 / ULID, trường audit timestamps (`created_at`, `updated_at`), quy trình Migration an toàn không downtime. |
| **`testing-qa.md`** | **Kiểm Thử & Đảm Bảo Chất Lượng**: Chuẩn cấu trúc AAA (Arrange - Act - Assert), cô lập môi trường test độc lập, bảo vệ tính toàn vẹn của bài test. |

---

## 5. Hướng Dẫn Cài Đặt Nhanh (Installation)

### 🎯 Cách 1: Cài đặt và Tự Động Sinh `/context/` Cho Dự Án Mới (Khuyên Dùng)
Mở Terminal tại thư mục dự án bạn đang làm việc và chạy:
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
```
> *Lệnh trên sẽ tự động cài đặt toàn bộ Spoke rules + scaffold sẵn thư mục `/context/` chuẩn cho dự án của bạn.*

---

### 🌍 Cách 2: Cài đặt Toàn Cục (Global) Cho Toàn Bộ Máy Tính
Áp dụng bộ quy tắc & template SDD cho tất cả các dự án trên máy (Antigravity, Cursor, Claude Code):
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash -s -- --global
```

---

### 📁 Cách 3: Chỉ Khởi Tạo Thư Mục `/context/` (Nếu đã có rules)
```bash
./install.sh --init-context
```

---

## 6. Quy Trình Sử Dụng & Đồng Bộ (Workflow)

```text
[1. Chỉnh sửa Rule trong .rules-hub/] ──► [2. Chạy ./sync-rules.sh] ──► [3. Toàn bộ AI nhận Rule mới]
```

1. Mở file cần sửa trong `.rules-hub/`.
2. Chạy lệnh đồng bộ:
   ```bash
   ./sync-rules.sh
   ```
3. Mọi công cụ AI của bạn (Cursor, Antigravity, Claude, Windsurf, Copilot) sẽ lập tức áp dụng quy chuẩn mới!

---

## 7. Bảng Ma Trận Tương Thích (Compatibility Matrix)

| Nền Tảng AI | Tệp Cấu Hình Đích | Cơ Chế Nạp Quy Tắc & Template |
| :--- | :--- | :--- |
| **Cursor IDE** | `.cursor/rules/*.mdc` + `.cursor/context-template/` | Tự động kích hoạt theo File Globs & Context |
| **Google Antigravity (AGY)** | `.agents/rules/*.md` + `.agents/context-template/` | Tự động nạp vào Agent Workspace Context |
| **Claude Code CLI** | `CLAUDE.md` | Chỉ dẫn hệ thống khi khởi chạy CLI |
| **OpenAI Codex CLI** | `CODEX.md` | Đọc làm System Prompt & Workspace Directives |
| **Codeium Windsurf** | `.windsurfrules` | Cascade Engine Context Memory |
| **GitHub Copilot** | `.github/copilot-instructions.md` | Nạp vào Copilot Chat & Code Completion |

---

## 8. Trải Nghiệm Thực Tế Khi Code (Day-to-Day AI Assistance)

* 🏗️ **Khi bắt đầu dự án mới**: Nhắn với AI: *"Hãy khởi tạo `/context/` theo chuẩn SDD và phỏng vấn kiến trúc với tôi"*. AI sẽ tự động scaffold và đặt câu hỏi làm rõ hệ thống.
* 🛡️ **Khi code bình thường**: AI luôn nhớ kỷ luật cốt lõi — tuyệt đối không đổi thư viện bừa bãi, không code lười `// TODO`, giữ file dưới 250 dòng và commit sạch sẽ.
* 🎨 **Khi mở file UI (`.tsx`, `.jsx`, `.vue`)**: AI chỉ nạp `frontend-ui` & `ui-context`, bảo đảm Responsive, tokenized styling, và đủ 4 trạng thái UI.
* ⚡ **Khi làm Backend (`routes/`, `services/`)**: AI kích hoạt `backend-api` & `architecture`, ép kiểm tra Zod/Pydantic và dispatch background jobs cho tác vụ nặng.
* 🧪 **Khi viết Test (`*.test.*`)**: AI kích hoạt `testing-qa`, tuân thủ AAA và không bao giờ gian lận sửa test assertion!

---
---

# 🇺🇸 ENGLISH - COMPREHENSIVE GUIDE

## 📑 Table of Contents
1. [The Vibe Coder Pain Points & "The Week 3 Wall"](#1-the-vibe-coder-pain-points--the-week-3-wall)
2. [Hub & Spoke Mechanics & Architecture](#2-hub--spoke-mechanics--architecture)
3. [✨ New Feature: Spec-Driven Development (SDD) & 6-File Context System](#3--new-feature-spec-driven-development-sdd--6-file-context-system)
4. [Deep Dive Governance Rules](#4-deep-dive-governance-rules)
5. [Quick Installation](#5-quick-installation)
6. [Workflow & Synchronization](#6-workflow--synchronization)
7. [Compatibility Matrix](#7-compatibility-matrix)

---

## 1. The Vibe Coder Pain Points & "The Week 3 Wall"

Vibe coding is incredible for rapid prototyping. But without architecture and explicit constraints, projects inevitably crash into **"The Week 3 Wall"**:
- **Context Drift**: The AI forgets previous decisions, and new features break existing code.
- **Tech Stack Violations**: The AI quietly swaps or installs conflicting libraries.
- **Mock Data in Production**: Hardcoded arrays that break when connected to real APIs.
- **Lazy Code Snippets**: Unfinished implementations with `// TODO` comments.
- **Fake Test Passes**: Modifying test assertions to make failing tests look green.

👉 **Hub & Spoke Pattern For AI + Spec-Driven Development solves all of this out of the box.**

---

## 3. ✨ New Feature: Spec-Driven Development (SDD) & 6-File Context System

Standardized from the 2026 Senior Engineering Masterclass methodology:

1. **`context/01-project-overview.md`**: Measurable goals, core user flow, strict Out-of-Scope (No-Gos).
2. **`context/02-architecture.md`**: Tech stack roles, system boundaries, hybrid storage, strict Invariants.
3. **`context/03-code-standards.md`**: Strict TypeScript (no `any`), RSC vs Client components, design tokens.
4. **`context/04-ai-workflow-rules.md`**: Single-unit execution discipline, ask on architectural ambiguity.
5. **`context/05-ui-context.md`**: Dark mode palette, typography, border radius tokens.
6. **`context/06-progress-tracker.md`**: Living state tracker (In-Progress, Completed, Architectural Decision Records).
7. **`context/feature-specs/*.md`**: Isolated feature units with clear acceptance checklists.

---

## 5. Quick Installation

### Single-Command Project Setup (Includes `/context/` scaffold):
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash
```

### Global Machine Setup (Cursor, Antigravity, Claude Code):
```bash
curl -sSL https://raw.githubusercontent.com/hungdxtgdd/Hub-Spoke-Pattern-For-AI/main/install.sh | bash -s -- --global
```
