# Systems Architecture & Invariants

## 1. Tech Stack & Assigned Roles
- **Frontend / Fullstack Framework**: Next.js 15 (App Router) / React 19 / TypeScript.
- **Styling & Design System**: Tailwind CSS v4 + Shadcn UI (Tokens defined in `ui-context.md`).
- **Authentication & Identity**: Clerk (Session management, route middleware protection).
- **Database & Persistence**: PostgreSQL via Prisma / Drizzle ORM.
- **Real-time State & Presence**: Liveblocks (CRDT rooms, live cursors, presence sync).
- **Background Jobs & AI Orchestration**: Trigger.dev / BullMQ (Handles jobs > 5 seconds with retries).
- **Asset & Blob Storage**: Vercel Blob / S3 (Hybrid model: DB stores metadata, Blob stores heavy files).

## 2. System Boundaries & Storage Architecture
- **API Boundary (`/app/api/*`)**: Only lightweight, fast operations (< 5s). Returns immediately or dispatches background jobs.
- **Worker Boundary (`/trigger/*` or `/workers/*`)**: Long-running AI operations, webhooks, and retry pipelines.
- **Hybrid Storage Model**:
  - Relational Database (PostgreSQL): User records, workspace metadata, permissions, blob pointers.
  - Object Storage (Vercel Blob / S3): Large JSON state graphs, generated documents, media assets.

## 3. Invariants (Strict Architectural Rules - Never Violate)
1. **Ownership & Auth Enforcement**: Every mutation API and WebSocket room connection must verify user authentication and workspace membership before issuing tokens.
2. **Non-Blocking Handlers**: Never run synchronous LLM generation or heavy file processing inside Next.js HTTP request handlers. Always dispatch to background tasks.
3. **Schema Integrity**: Data schemas stored on canvas/state and database must maintain backwards compatibility.
4. **Least Privilege Client Components**: Default to Server Components (`RSC`). Add `'use client'` only for interactive UI or browser hooks.
