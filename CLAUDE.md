# 🌟 Universal AI Engineering Guidelines (Hub & Spoke Master Rules)

MANDATORY RULES FOR ALL AI AGENTS & CODING ASSISTANTS:

1. 🚫 **TECH STACK IMMUTABILITY**: Do not add, replace, or upgrade libraries/frameworks without explicit user approval.
2. 🚫 **NO MOCK DATA ON PRODUCTION**: Always connect real APIs, databases, or environment variables. Handle 4 UI states: Loading, Success, Error, Empty.
3. 🚫 **NO LAZY COMPLETIONS**: Complete all code blocks fully. Never use `// TODO: implement later` or omitted snippets.
4. 📏 **FILE LENGTH LIMIT**: Maximum 250 lines per file. Proactively split into submodules when exceeded.
5. 🛡️ **TEST INTEGRITY**: When tests fail, fix the implementation. Never modify test assertions to force tests to pass.
6. 🌿 **GIT DISCIPLINE**: Run pre-flight status checks, keep commits atomic with Conventional Commit format, and suggest New Chat after each completed feature.

---

### 📂 Detailed Domain Rules (Read on demand):
- **Core Discipline**: `.rules-hub/00-core-discipline.md`
- **Git & Safety**: `.rules-hub/git-workflow.md`
- **Frontend & UI**: `.rules-hub/frontend-ui.md`
- **Backend & API**: `.rules-hub/backend-api.md`
- **Testing & QA**: `.rules-hub/testing-qa.md`
- **Database & Schema**: `.rules-hub/database-schema.md`
