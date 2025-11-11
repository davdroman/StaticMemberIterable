## Agent Guidelines

1. **Test-Driven Mindset**
   - Treat `swift test` (or equivalent) as part of every instruction unless the user explicitly opts out.
   - When feasible, add or adjust tests to capture new behavior before changing implementation details.
   - If tests must be skipped, call it out and explain why.

2. **Iterate on Existing Code**
   - After implementing a change, re‑evaluate nearby code for redundancy, dead paths, or simplifications that the update enables.
   - Remove obsolete helpers, APIs, or comments when they no longer add value.
   - Keep diffs focused: don’t mix unrelated cleanups unless they fall out naturally from the requested work.

3. **README Stewardship**
   - Ensure `README.md` remains short, accurate, and directly related to the current library surface.
   - Update usage snippets, API lists, or caveats whenever behavior changes.
   - Avoid marketing fluff; prioritize concise explanations and practical examples.

4. **Communication Notes**
   - When parameterizing tests or configurations, prefer explicit argument lists over computed helpers so intent stays readable.
   - Call out any assumptions, limitations, or skipped steps (e.g., networking constraints, slow tests).
   - If an instruction conflicts with these guidelines, follow the instruction but highlight the divergence.
