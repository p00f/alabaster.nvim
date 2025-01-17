;; vim: ft=query
;; extends

(interface_declaration
  name: (type_identifier) @AlabasterDefinition)

(method_definition
  name: (property_identifier) @AlabasterDefinition)

(function_declaration
  name: (identifier) @AlabasterDefinition)

(variable_declarator
  name: (identifier) @AlabasterDefinition
  value: (arrow_function))

(type_alias_declaration
  name: (type_identifier) @AlabasterDefinition)

(undefined) @AlabasterConstant
