;; vim: ft=query
;; extends

(function_definition
  name: (word) @AlabasterDefinition)

(command
  name: (word) @function.builtin
  (#match? @function.builtin "^set$")
  argument: (word) @parameter
  (#any-of? @parameter "-g" "--global" "-U" "--universal" "-x" "--export")
  argument: (word) @AlabasterDefinition
  argument: (_))

((program . (comment) @AlabasterHashbang)
 (#match? @AlabasterHashbang "^#!/"))
