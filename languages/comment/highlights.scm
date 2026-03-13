; TODO, WIP, QUESTION — needs attention, in-progress
((tag
  (prefix)? @constant.comment.todo.prefix
  (name) @constant.comment.todo
  ("(" @constant.comment.todo.bracket
    (user) @constant.comment.todo.user
    ")" @constant.comment.todo.bracket)?
  (
    (prefix)? @constant.comment.todo.prefix
    (text)? @constant.comment.todo.text)*
  )
  (#match? @constant.comment.todo "^(TODO|WIP|MAYBE|QUESTION|QUESTIONS|IDEA|TEMP|TEMPORARY|\\?)$"))

; NOTE, INFO, DOCS — informational
((tag
  (prefix)? @string.comment.info.prefix
  (name) @string.comment.info
  ("(" @string.comment.info.bracket
    (user) @string.comment.info.user
    ")" @string.comment.info.bracket)?
  (
    (prefix)? @string.comment.info.prefix
    (text)? @string.comment.info.text)*
  )
  (#match? @string.comment.info "^(NOTE|XXX|INFO|DOCS|PERF|OPTIMIZE|PERFORMANCE|SAFETY|INVARIANT|TEST|\\*)$"))

; FIXME, BUG, ERROR — broken, must be fixed
((tag
  (prefix)? @property.comment.error.prefix
  (name) @property.comment.error
  ("(" @property.comment.error.bracket
    (user) @property.comment.error.user
    ")" @property.comment.error.bracket)?
  (
    (prefix)? @property.comment.error.prefix
    (text)? @property.comment.error.text)*
  )
  (#match? @property.comment.error "^(FIXME|BUG|ERROR|ISSUE|DEPRECATED|DELETE|!)$"))

; HACK, WARNING, WARN — fragile or workaround
((tag
  (prefix)? @keyword.comment.warn.prefix
  (name) @keyword.comment.warn
  ("(" @keyword.comment.warn.bracket
    (user) @keyword.comment.warn.user
    ")" @keyword.comment.warn.bracket)?
  (
    (prefix)? @keyword.comment.warn.prefix
    (text)? @keyword.comment.warn.text)*
  )
  (#match? @keyword.comment.warn "^(HACK|WARNING|WARN|FIX|SAFETY|XXX|#)$"))
