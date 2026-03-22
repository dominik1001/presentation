---
name: create-html-slide
description: Create a single-file, fullscreen HTML slide for a live presentation.
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
- When asked to make an interactive slide only use the left and right arrow keys to trigger the interaction.

## Inputs to ask for before building
1. **Concept** — what is the one idea this slide teaches?
2. **Audience** — who are they and what do they already know?
3. **Feeling** — what should they feel after interacting with it?

## Output
- A single named `.html` file.
- Filename reflects the concept and start with a two digit representation of the slide number.
- Use the `/slides` folder.
