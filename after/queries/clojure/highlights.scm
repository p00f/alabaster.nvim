;; extends
(list_lit
  value: (sym_lit)
  (#any-of? @_keyword.function "fn" "fn*" "defn" "defn-")
  value: (sym_lit)? @AlabasterDefinition
  value: (vec_lit)
  (str_lit)? @comment)

(list_lit
  value: (sym_lit)
  (#any-of? @_keyword.function "fn" "fn*" "defn" "defn-")
  value: (sym_lit)? @AlabasterDefinition
  value: (list_lit))

(list_lit
  value: (sym_lit)
  (#eq? @_keyword.function "defmacro")
  value: (sym_lit)? @AlabasterDefinition
  value: (vec_lit)
  (str_lit)? @comment)

(list_lit
  value: (sym_lit) @_include
  (#eq? @_include "ns")
  value: (sym_lit) @AlabasterDefinition)

(list_lit
  value: (kwd_lit) @AlabasterConstant)
(vec_lit
  value: (kwd_lit) @AlabasterConstant)
(map_lit
  value: (kwd_lit) @AlabasterConstant)
