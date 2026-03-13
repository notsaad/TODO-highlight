; TODO, WIP, QUESTION — needs attention, in-progress
(tag
  (name) @comment.todo
  (#match? @comment.todo "^(TODO|WIP|QUESTION|QUESTIONS|IDEA|TEMP|TEMPORARY)$"))

; FIXME, BUG, ERROR — broken, must be fixed
(tag
  (name) @comment.error
  (#match? @comment.error "^(FIXME|BUG|ERROR|ISSUE|DEPRECATED)$"))

; HACK, WARNING, WARN — fragile or workaround
(tag
  (name) @comment.warning
  (#match? @comment.warning "^(HACK|WARNING|WARN|XXX)$"))

; NOTE, INFO, DOCS — informational
(tag
  (name) @comment.note
  (#match? @comment.note "^(NOTE|INFO|DOCS|PERF|OPTIMIZE|PERFORMANCE|SAFETY|INVARIANT)$"))

; Username inside parens: FIXME(user):
(tag
  (user) @variable)

; URLs that appear in comments
(uri) @string.special.url
