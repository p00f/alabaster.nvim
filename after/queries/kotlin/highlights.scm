;; vim: ft=query
;; extends
(function_declaration
  (simple_identifier) @AlabasterDefinition)

(class_declaration
  (type_identifier) @AlabasterDefinition)

(object_declaration
  (type_identifier) @AlabasterDefinition)

(string_literal) @AlabasterString

(boolean_literal) @AlabasterConstant
(integer_literal) @AlabasterConstant
(long_literal) @AlabasterConstant
(unsigned_literal) @AlabasterConstant
(real_literal) @AlabasterConstant

(line_comment) @AlabasterHashbang
(multiline_comment) @Comment


(modifiers (annotation (user_type (type_identifier) @AlabasterPunctuation)))
