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

;; class declarations
(class_declaration
  name: (type_identifier) @AlabasterDefinition)

;; decorators
(decorator
  ((identifier) @AlabasterDefinition)?
  (call_expression
    function: (identifier) @AlabasterDefinition)?)

;; method calls 
(call_expression
  function: (member_expression 
    property: (property_identifier) @AlabasterDefinition))

;; type arguments
(type_arguments
  (_) @AlabasterDefinition)

(undefined) @AlabasterConstant
