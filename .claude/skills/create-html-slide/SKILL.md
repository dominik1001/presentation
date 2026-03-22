---
name: create-html-slide
description: Create or update a single-file, fullscreen HTML slide for a live presentation.
---

**Default style:** Always apply the `prestige-style` skill (colors, typography, layout rules) unless the user explicitly overrides it.

## What makes a great slide
- **One idea only** — if it needs scrolling, it's too much
- **Visual over text** — show the concept, don't describe it
- **Interaction teaches** — let the audience do something to feel the idea
- **Breathing room** — whitespace is not wasted space
- **Readable at distance** — minimum 24px body, 48px+ headlines
- **Purposeful animation** — slow enough to follow, never decorative
- **No bullet points** — find a visual way to express lists

## Rules
- Single `.html` file, no external dependencies
- Fullscreen by default (`body { margin: 0; height: 100vh; background: #080808 }`)
- All colors, fonts, and styling come from `prestige-style`
- One primary interaction per slide — clicking, typing, or watching
- Always tell the user what to do (subtle prompt or label)

## Interactions
- Arrow keys are the only mechanism — no clicks, no other keys.
- **Slides without interaction:** → goes to next slide, ← goes to previous slide.
- **Slides with interaction:** arrows step through the interaction first (→ forward, ← backward). Navigation to the next/previous slide only triggers once the interaction reaches its end or beginning.

## Inputs to ask for before building
1. **Concept** — what is the one idea this slide teaches?
2. **Audience** — who are they and what do they already know?
3. **Feeling** — what should they feel after interacting with it?

## Output
- A single named `.html` file.
- Filename reflects the concept and start with a two digit representation of the slide number.
- Use the `/slides` folder.
- Add very small and low-contrast slide numbers on the bottom right. Make sure they are styled and layouted out exactly the same on each slide.
