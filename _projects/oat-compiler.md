---
title: "Oat Compiler"
summary: "A complete end-to-end compiler that can compile the Oat language into Assembly code with optimizations."
year: 2024
featured: true
tech: ["OCaml", "VS Code", "Docker", "Linux"]
---

## What it is

This is a complete compiler that can compile the Oat language into
Assembly code for machines to execute. This project includes an x86
simulator, in which the compiled Assembly code can be run.

## Highlights

- Developed a complete compiler for the Oat language, encompassing an x86lite simulator, LLVMlite-based IR construction, type checking, and simple optimizations over a four-month period.
- Designed and implemented a register allocator using Kempe’s K-coloring algorithm to optimize register utilization compared to the previous spill-to-stack approach.
- Implemented core Oat language features, including arrays, functions, and control flow constructs, while validating correctness through systematic testing of each compilation phase.
