;; vim: ft=query
;; extends
(function_declaration
  (simple_identifier) @AlabasterDefinition)

(class_declaration
  (type_identifier) @AlabasterDefinition)

(modifiers (annotation (user_type (type_identifier) @AlabasterPunctuation)))
