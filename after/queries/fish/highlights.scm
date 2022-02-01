(function_definition
  name: (word) @alabaster.definition)

(command
  name: (word) @function.builtin
  (#match? @function.builtin "^set$")
  argument: (word) @parameter
  (#any-of? @parameter "-g" "--global" "-U" "--universal" "-x" "--export")
  argument: (word) @alabaster.definition
  argument: (_))
