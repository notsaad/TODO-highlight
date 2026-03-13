# TODO Highlight

A [Zed](https://zed.dev) extension that highlights `TODO`, `FIXME`, and other comment annotations — inspired by the popular VSCode `vscode-todo-highlight` extension.

## Supported Keywords

| Keyword | Highlight | Examples |
|---|---|---|
| `TODO`, `WIP`, `QUESTION`, `IDEA`, `TEMP` | `@comment.todo` (yellow) | `// TODO: implement this` |
| `FIXME`, `BUG`, `ERROR`, `ISSUE`, `DEPRECATED` | `@comment.error` (red) | `// FIXME: crashes on nil` |
| `HACK`, `WARNING`, `WARN`, `XXX` | `@comment.warning` (orange) | `// HACK: temporary workaround` |
| `NOTE`, `INFO`, `DOCS`, `PERF`, `SAFETY` | `@comment.note` (blue) | `// NOTE: see RFC 1234` |

Usernames in annotations are highlighted as `@variable`:
```
// FIXME(saad): this needs revisiting
```

URLs in comments are highlighted as `@string.special.url`.

## How It Works

This is a grammar-only Zed extension — no Rust or compilation required. It uses the [`tree-sitter-comment`](https://github.com/stsewd/tree-sitter-comment) grammar, which Zed automatically injects into comment nodes of all supported languages (Rust, JavaScript, Python, Go, etc.).

The highlight colors depend on your active theme's support for the capture names above. Most built-in Zed themes support at least `@comment.todo`.

## Installation

**From the registry (once published):**
Open Zed → `Extensions` → search for "TODO Highlight" → Install.

**As a dev extension:**
1. Clone this repo
2. In Zed: `Extensions` → `Install Dev Extension` → select the cloned directory

## Languages Supported

Anywhere Zed injects the `comment` grammar — which includes all major languages out of the box.
