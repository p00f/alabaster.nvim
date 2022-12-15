;; vim: ft=query
;; extends

(function_definition
  name: (identifier) @AlabasterDefinition)
(class_definition
  name: (identifier) @AlabasterDefinition)

((module . (comment) @AlabasterHashbang)
 (#match? @AlabasterHashbang "^#!/"))
