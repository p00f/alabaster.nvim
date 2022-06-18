;; vim: ft=query

(function_declarator
  declarator: (identifier) @alabaster.definition)
(preproc_function_def
  name: (identifier) @alabaster.definition)

(type_definition
  type: (struct_specifier
          name: (type_identifier) @alabaster.definition)
  declarator: (type_identifier) @alabaster.definition)

(type_definition
  type: (struct_specifier)
  declarator: (type_identifier) @alabaster.definition)

(type_definition
  type: (enum_specifier)
  declarator: (type_identifier) @alabaster.definition)
