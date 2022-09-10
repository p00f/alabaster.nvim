;; vim: ft=query
;; extends

(function_declarator
  declarator: (qualified_identifier
                name: (identifier) @AlabasterDefinition))

;; TODO there's probably a lot of duplicates here

(function_definition
  declarator: (function_declarator
                declarator: (destructor_name (identifier) @AlabasterDefinition)))

(function_definition
  declarator: (function_declarator
                declarator: (field_identifier) @AlabasterDefinition))

(function_definition
  declarator: (function_declarator
                declarator: (qualified_identifier
                              name: (destructor_name
                                      (identifier) @AlabasterDefinition))))

(declaration
  declarator: (function_declarator
                declarator:
                  (destructor_name (identifier) @AlabasterDefinition)))

(field_declaration
  declarator: (function_declarator
                declarator: (field_identifier) @AlabasterDefinition))

(field_declaration
  declarator: (pointer_declarator
                declarator: (function_declarator
                              declarator:
                                (field_identifier) @AlabasterDefinition)))

(function_declarator
 declarator: (field_identifier) @AlabasterDefinition)

(function_declarator
     declarator: (qualified_identifier
                   name: (identifier) @AlabasterDefinition))
(function_declarator
     declarator: (qualified_identifier
                   name: (qualified_identifier
                           name: (identifier) @AlabasterDefinition)))
((function_declarator
     declarator: (qualified_identifier
                   name: (identifier) @AlabasterDefinition))
 (#lua-match? @AlabasterDefinition "^[A-Z]"))

(labeled_statement
  label: (statement_identifier) @AlabasterDefinition)

(type_definition
  declarator: (type_identifier) @AlabasterDefinition)

(preproc_def
  name: (identifier) @AlabasterDefinition)

(class_specifier
  name: (type_identifier) @AlabasterDefinition)

(struct_specifier
  name: (type_identifier) @AlabasterDefinition)
