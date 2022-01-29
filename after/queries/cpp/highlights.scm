(function_declarator
  declarator: (qualified_identifier
                name: (identifier) @alabaster.definition))

(function_definition
  declarator: (function_declarator
                declarator: (destructor_name (identifier) @alabaster.definition)))

(function_definition
  declarator: (function_declarator
                declarator: (field_identifier) @alabaster.definition))

(function_definition
  declarator: (function_declarator
                declarator: (qualified_identifier
                              name: (destructor_name
                                      (identifier) @alabaster.definition))))

(declaration
  declarator: (function_declarator
                declarator: (destructor_name (identifier) @alabaster.definition)))

(field_declaration
  declarator: (function_declarator
                declarator: (field_identifier) @alabaster.definition))

(labeled_statement
  label: (statement_identifier) @alabaster.definition)

(type_definition
  declarator: (type_identifier) @alabaster.definition)

(preproc_def
  name: (identifier) @alabaster.definition)

(class_specifier
  name: (type_identifier) @alabaster.definition)

(struct_specifier
  name: (type_identifier) @alabaster.definition)
