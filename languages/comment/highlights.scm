; TODO, WIP, QUESTION — needs attention, in-progress
((tag (name) @constant.comment.todo)
  (#match? @constant.comment.todo "^(TODO|WIP|MAYBE|QUESTION|QUESTIONS|IDEA|TEMP|TEMPORARY|\\?)$"))

; NOTE, INFO, DOCS — informational
((tag (name) @string.comment.info)
  (#match? @string.comment.info "^(NOTE|XXX|INFO|DOCS|PERF|OPTIMIZE|PERFORMANCE|SAFETY|INVARIANT|TEST|\\*)$"))

; FIXME, BUG, ERROR — broken, must be fixed
((tag (name) @property.comment.error)
  (#match? @property.comment.error "^(FIXME|BUG|ERROR|ISSUE|DEPRECATED|DELETE|!)$"))

; HACK, WARNING, WARN — fragile or workaround
((tag (name) @keyword.comment.warn)
  (#match? @keyword.comment.warn "^(HACK|WARNING|WARN|FIX|SAFETY|XXX|#)$"))
