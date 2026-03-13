# TODO Highlight

A [Zed](https://zed.dev) extension that highlights `TODO`, `FIXME`, and other comment annotations, but leaves the rest of the comment unhighlighted.

## Supported Keywords

| Group | Keywords | Capture | Color |
|---|---|---|---|
| Todo | `TODO`, `WIP`, `MAYBE`, `QUESTION`, `IDEA`, `TEMP`, `?` | `@constant.comment.todo` | Yellow |
| Error | `FIXME`, `BUG`, `ERROR`, `DEPRECATED`, `DELETE`, `!` | `@property.comment.error` | Red |
| Warning | `HACK`, `WARNING`, `WARN`, `XXX`, `SAFETY`, `FIX`, `#` | `@keyword.comment.warn` | Orange |
| Info | `NOTE`, `INFO`, `DOCS`, `PERF`, `TEST`, `*` | `@string.comment.info` | Blue |

## How It Works

This is a grammar-only Zed extension — no Rust or compilation required. It uses the [`tree-sitter-comment`](https://github.com/thedadams/tree-sitter-comment) grammar, which Zed automatically injects into comment nodes of all supported languages (Rust, JavaScript, Python, Go, C++, etc.).

## Background Highlight (Optional)

By default, only the keyword text is colored. To get a **colored background box** around keywords, add this to your Zed `settings.json`:

```json
{
  "experimental.theme_overrides": {
    "syntax": {
      "constant.comment.todo": {
        "color": "#FACC15",
        "background_color": "#FACC1533",
        "font_weight": 700
      },
      "property.comment.error": {
        "color": "#EF4444",
        "background_color": "#EF444433",
        "font_weight": 700
      },
      "string.comment.info": {
        "color": "#3B82F6",
        "background_color": "#3B82F633",
        "font_weight": 700
      },
      "keyword.comment.warn": {
        "color": "#F97316",
        "background_color": "#F9731633",
        "font_weight": 700
      }
    }
  }
}
```

## Installation

**From the registry (once published):**
Open Zed → `Extensions` → search for "TODO Highlight" → Install.

**As a dev extension:**
1. Clone this repo
2. In Zed: `Extensions` → `Install Dev Extension` → select the cloned directory

## Languages Supported

Anywhere Zed injects the `comment` grammar — which includes all major languages out of the box.

## License

[MIT](LICENSE)
