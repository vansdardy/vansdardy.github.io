---
title: "Options Pricing Visualizer"
summary: "A real-time Black–Scholes visualizer that animates how option value reacts to volatility, time, and spot price."
year: 2025
featured: true
tech: ["TypeScript", "React", "D3", "WebSockets"]
repo: "https://github.com/vansdardy/options-pricing-visualizer"
demo: "https://example.com"
---

## What it is

A browser tool that makes the Greeks *legible*. Drag the spot price or volatility
sliders and the option surface re-renders in real time, so the abstract calculus
of Black–Scholes becomes something you can feel.

## Why I built it

I wanted to internalize how delta and theta trade off near expiry. Reading the
formulas wasn't enough — seeing the surface move was.

## Highlights

- Sub-16ms re-renders by memoizing the pricing grid and only recomputing changed cells.
- A WebSocket feed streams live underlying prices; the surface tracks the market.
- Won 1st place at the university hackathon (built in 24 hours).

> Replace this file's content with your own write-up. Add a new project by
> copying this file to `_projects/your-project.md` and editing the front matter.
