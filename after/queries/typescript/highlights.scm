;; vim: ft=query
;; extends

(interface_declaration
  name: (type_identifier) @AlabasterDefinition)

(function_declaration
  name: (identifier) @AlabasterDefinition)

(type_alias_declaration
  name: (type_identifier) @AlabasterDefinition)

(undefined) @AlabasterConstant
