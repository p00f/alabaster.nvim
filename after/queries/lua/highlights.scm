(function_declaration
  name: (identifier) @alabaster.definition)

(assignment_statement
  (variable_list
    name: (dot_index_expression
            field: (identifier) @alabaster.definition))
  (expression_list
    value: (function_definition)))

(assignment_statement
  (variable_list
    name: (identifier) @alabaster.definition)
  (expression_list
    value: (function_definition)))

(function_declaration
  name: (dot_index_expression
          field: (identifier) @alabaster.definition))

(table_constructor
  (field name: (identifier) @alabaster.string))
