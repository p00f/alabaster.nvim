; vim: ft=query

(local_function (identifier) @alabaster.definition)

(function
  (function_name (identifier) @alabaster.definition))
(function
  (function_name
    (function_name_field
      ;; TODO capture only the last `property_identifier`
      (property_identifier) @alabaster.definition)))

(variable_declaration
 (variable_declarator
   (identifier) @alabaster.definition)
 (function_definition))

(local_variable_declaration
 (variable_declarator
   (identifier) @alabaster.definition)
 (function_definition))

(variable_declaration
  (variable_declarator
    (field_expression
      (property_identifier) @alabaster.definition))
  (function_definition))

(variable_declaration
  (variable_declarator
    (field_expression
      (global_variable)
      (property_identifier) @alabaster.definition)))

(table
  (field
    (identifier) @alabaster.string
    (_)))
