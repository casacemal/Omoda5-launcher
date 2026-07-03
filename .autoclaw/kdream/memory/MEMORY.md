
## 2026-07-02T22:05:05.816Z — /learn
Analyzed 1495 session(s), 6 kept signal(s) from autoclaw-native, cline-roo, continue, gemini.
Successful patterns:
- Kept (git commit): 250: import android.content.Context
- Kept (git commit): private fun checkProactiveWarnings() {
- Kept (git commit): class CommandRouter(
- Kept (git commit): data class AppConfig(
- Kept (git commit): val reader = proc.inputStream.bufferedReader()
Patterns to avoid:
- Avoid large speculative rewrites that are not backed by tests.
- Avoid adding new dependencies when an existing project utility already covers the need.
