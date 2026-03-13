; TODO family — needs attention, in-progress
((tag (name) @constant.comment.todo)
  (#match? @constant.comment.todo "^(TODO|WIP|MAYBE|QUESTION|IDEA|TEMP|\\?)$"))

; NOTE family — informational
((tag (name) @string.comment.info)
  (#match? @string.comment.info "^(NOTE|INFO|DOCS|PERF|TEST|\\*)$"))

; FIXME family — broken, must be fixed
((tag (name) @property.comment.error)
  (#match? @property.comment.error "^(FIXME|BUG|ERROR|DEPRECATED|DELETE|!)$"))

; HACK family — fragile, workaround, or warning
((tag (name) @keyword.comment.warn)
  (#match? @keyword.comment.warn "^(HACK|WARNING|WARN|XXX|SAFETY|FIX|#)$"))
