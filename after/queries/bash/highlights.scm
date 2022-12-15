;; vim: ft=query
;; extends

(function_definition
  name: (word) @AlabasterDefinition)

((program . (comment) @AlabasterHashbang)
 (#match? @AlabasterHashbang "^#!/"))
