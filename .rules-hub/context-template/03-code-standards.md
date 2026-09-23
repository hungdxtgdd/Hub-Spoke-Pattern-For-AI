# Code Standards & Engineering Conventions

## 1. TypeScript & Type Discipline
- Strict TypeScript enabled (`strict: true`). **STRICTLY FORBIDDEN to use `any`**.
- Define all domain interfaces and data schemas in `@/types` or `@/shared/schemas`.
- Validate all incoming API payloads and user inputs with `Zod`.

## 2. Component & File Structure
- Maximum **250 lines per file**. Proactively decompose large components into sub-components, custom hooks, or utility functions.
- Server Components by default; add `'use client'` only when utilizing state (`useState`, `useEffect`), event handlers, or browser APIs.
- Co-locate helper functions and sub-components when they are only used within a single feature module.

## 3. Styling & Token Discipline
- All styling must reference design tokens declared in `globals.css` and `ui-context.md`.
- **STRICTLY FORBIDDEN to hardcode raw hex colors** (e.g. `#1e1e2e`) in JSX or inline styles.
- Use `cn()` helper (clsx + tailwind-merge) for dynamic class combination.

## 4. Error Handling & Edge Cases
- Always handle 4 UI states: `Loading`, `Success`, `Error`, and `Empty State`.
- Handle network failures, timeouts, and authorization rejections gracefully with user-facing toasts or alerts.
