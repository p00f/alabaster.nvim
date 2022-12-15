;; vim: ft=query
;; extends

(function_declaration
  name: (identifier) @AlabasterDefinition)

(assignment_statement
  (variable_list
    name: (dot_index_expression
            field: (identifier) @AlabasterDefinition))
  (expression_list
    value: (function_definition)))

(assignment_statement
  (variable_list
    name: (identifier) @AlabasterDefinition)
  (expression_list
    value: (function_definition)))

(function_declaration
  name: (dot_index_expression
          field: (identifier) @AlabasterDefinition))

(table_constructor
  (field name: (identifier) @AlabasterString))

(hash_bang_line) @AlabasterHashbang
