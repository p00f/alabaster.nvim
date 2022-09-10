;; vim: ft=query
;; extends

(struct_item
  name: (type_identifier) @AlabasterDefinition)
(enum_item
  name: (type_identifier) @AlabasterDefinition)

(impl_item
  type: (type_identifier) @AlabasterDefinition)

(impl_item
  type: (scoped_type_identifier
          path: (scoped_identifier)
          name: (type_identifier) @AlabasterDefinition))

(impl_item
  body: (declaration_list
          (type_item
            name: (type_identifier) @AlabasterDefinition)))
(impl_item
  type: (generic_type
          type: (type_identifier) @AlabasterDefinition))

(trait_item
  name: (type_identifier) @AlabasterDefinition)

(trait_item
  body: (declaration_list
          (associated_type
            name: (type_identifier) @AlabasterDefinition)))

(trait_item
  body: (declaration_list
          (function_signature_item
            name: (identifier) @AlabasterDefinition)))

(function_item
  name: (identifier) @AlabasterDefinition)

(macro_definition
  name: (identifier) @AlabasterDefinition)

(for_expression
  "in" @AlabasterPunctuation)
(type_arguments
  "<" @AlabasterPunctuation)
(type_arguments
  ">" @AlabasterPunctuation)
(type_parameters
  "<" @AlabasterPunctuation)
(type_parameters
  ">" @AlabasterPunctuation)
