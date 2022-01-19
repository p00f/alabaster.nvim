(list_lit
  value: (sym_lit)
 (#any-of? @_keyword.function "fn" "fn*" "defn" "defn-")
  value: (sym_lit)? @alabaster.definition
  value: (vec_lit)
 (str_lit)? @comment)

(list_lit
  value: (sym_lit)
 (#eq? @_keyword.function "defmacro")
  value: (sym_lit)? @alabaster.definition
  value: (vec_lit)
 (str_lit)? @comment)

(list_lit
  value: (sym_lit) @_include
  (#eq? @_include "ns")
  value: (sym_lit) @alabaster.definition)

(list_lit
  value: (kwd_lit) @alabaster.constant)
(vec_lit
  value: (kwd_lit) @alabaster.constant)
(map_lit
  value: (kwd_lit) @alabaster.constant)
