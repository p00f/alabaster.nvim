(struct_item
  name: (type_identifier) @alabaster.definition)
(enum_item
  name: (type_identifier) @alabaster.definition)

(impl_item
  type: (type_identifier) @alabaster.definition
  !trait)
(impl_item
  trait: (type_identifier) @alabaster.definition)
(impl_item
  body: (declaration_list
          (type_item
            name: (type_identifier) @alabaster.definition)))
(impl_item
  type: (generic_type
          type: (type_identifier) @alabaster.definition))

(trait_item
  name: (type_identifier) @alabaster.definition
  body: (declaration_list
          (associated_type
            name: (type_identifier) @alabaster.definition)
          (function_signature_item
            name: (identifier) @alabaster.definition)))

(function_item
  name: (identifier) @alabaster.definition)

(macro_definition
  name: (identifier) @alabaster.definition)

(for_expression
  "in" @alabaster.punctuation)
(type_arguments
  "<" @alabaster.punctuation)
(type_arguments
  ">" @alabaster.punctuation)
(type_parameters
  "<" @alabaster.punctuation)
(type_parameters
  ">" @alabaster.punctuation)
