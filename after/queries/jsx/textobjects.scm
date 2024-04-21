;; extends

(jsx_element
  (jsx_opening_element)
  .
  (_) @_start @_end
  (_)? @_end
  .
  (jsx_closing_element)
  (#make-range! "element.inner" @_start @_end)
) @element.outer

(jsx_self_closing_element) @jsx.outer

