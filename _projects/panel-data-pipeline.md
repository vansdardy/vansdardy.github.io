---
title: "Reproducible Panel-Data Pipeline"
summary: "A Python pipeline that turns 12M rows of messy labor-market records into a clean, documented, reproducible panel."
year: 2025
featured: true
tech: ["Python", "pandas", "DuckDB", "Make"]
repo: "https://github.com/vansdardy/panel-data-pipeline"
---

## What it is

An end-to-end data pipeline for an econometrics lab: raw survey extracts go in,
a tidy analysis-ready panel comes out, with every transformation version-controlled
and re-runnable with a single `make` command.

## Highlights

- Replaced a fragile pile of notebooks with a DAG of small, testable steps.
- Cut full-rebuild time from ~25 min to under 4 by pushing joins into **DuckDB**.
- Documented every column's provenance so results are auditable and replicable.
