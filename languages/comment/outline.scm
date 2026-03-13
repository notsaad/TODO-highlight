(tag
  (name) @name
  (
    "(" @context
    (user) @context
    ")" @context
  )?
  .
  (text)? @context
  (#match? @name "^(TODO|WIP|MAYBE|QUESTION|IDEA|TEMP|NOTE|INFO|DOCS|PERF|TEST|FIXME|BUG|ERROR|DEPRECATED|DELETE|HACK|WARNING|WARN|XXX|SAFETY|FIX|\\*|!|\\?|#)$")
) @item
