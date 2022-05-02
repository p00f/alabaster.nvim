;; vim: ft=query

(fn
  name: (symbol) @alabaster.definition)
  ; TODO: add this when https://github.com/nvim-treesitter/nvim-treesitter/issues/1788 is fixed
  ; docstring: (string)? @alabaster.comment
(fn
  name: (multi_symbol (symbol) @alabaster.definition))

(global
  (binding
    (symbol) @alabaster.definition))

(list
  (symbol) @function.builtin
  (#match? @function.builtin "^macro$")
  (symbol) @alabaster.definition)
