---
title: "termflow — a tiny CLI task runner"
summary: "A dependency-aware task runner for the terminal, written in Go, with a focus on fast startup and readable output."
year: 2024
featured: false
tech: ["Go", "Cobra"]
repo: "https://github.com/vansdardy/termflow"
---

## What it is

A small `make`-alternative for personal projects: declare tasks and their
dependencies in a YAML file, run them with clean, color-coded output.

## Highlights

- Single static binary, ~8ms cold start.
- Parallel execution of independent tasks with a clear live status view.
- Built to learn Go's concurrency model hands-on.
