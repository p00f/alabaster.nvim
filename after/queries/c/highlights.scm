;; vim: ft=query
;; extends

(function_declarator
  declarator: (identifier) @AlabasterDefinition)
(preproc_function_def
  name: (identifier) @AlabasterDefinition)

(type_definition
  type: (struct_specifier
          name: (type_identifier) @AlabasterDefinition)
  declarator: (type_identifier) @AlabasterDefinition)

(type_definition
  type: (struct_specifier)
  declarator: (type_identifier) @AlabasterDefinition)

(type_definition
  type: (enum_specifier)
  declarator: (type_identifier) @AlabasterDefinition)

(struct_specifier
  name: (type_identifier) @AlabasterDefinition)

(declaration
  type: (struct_specifier
          name: (type_identifier) @AlabasterBase))

(enum_specifier
    name: (type_identifier) @AlabasterDefinition)

(declaration
  type: (enum_specifier
          name: (type_identifier) @AlabasterBase))
