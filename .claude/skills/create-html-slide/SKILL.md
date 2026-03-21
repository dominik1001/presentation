---
name: create-html-slide
description: Create a single-file, fullscreen HTML slide for a live presentation.
---

## What makes a great slide
- **One idea only** — if it needs scrolling, it's too much
- **Visual over text** — show the concept, don't describe it
- **Interaction teaches** — let the audience do something to feel the idea
- **Breathing room** — whitespace is not wasted space
- **Readable at distance** — minimum 24px body, 48px+ headlines
- **Purposeful animation** — slow enough to follow, never decorative

## Rules
- Single `.html` file, no external dependencies
- Fullscreen by default (`body { margin: 0; height: 100vh }`)
- Dark backgrounds reduce eye fatigue on projectors
- Max 2 fonts, max 3 colors
- One primary interaction per slide — clicking, typing, or watching
- Always tell the user what to do (subtle prompt or label)

## Inputs to ask for before building
1. **Concept** — what is the one idea this slide teaches?
2. **Audience** — who are they and what do they already know?
3. **Feeling** — what should they feel after interacting with it?
4. **Style** — colors, fonts, tone (or point to a style guide)

## Output
A single named `.html` file. Filename reflects the concept.
