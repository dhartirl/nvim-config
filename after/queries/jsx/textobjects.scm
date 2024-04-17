;; extends

(jsx_element
  (jsx_opening_element) @_start
  (_) @jsx.inner
  (jsx_closing_element) @_end
) @jsx.outer

(jsx_self_closing_element) @jsx.outer

