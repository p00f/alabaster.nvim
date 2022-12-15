;; vim: ft=query
;; extends

(fn
  name: (symbol) @AlabasterDefinition)
  ; TODO: add this when https://github.com/nvim-treesitter/nvim-treesitter/issues/1788 is fixed
  ; docstring: (string)? @AlabasterComment
(fn
  name: (multi_symbol (symbol) @AlabasterDefinition))

(global
  (binding
    (symbol) @AlabasterDefinition))

(list
  (symbol) @function.macro
  (#match? @function.macro "^macro$")
  (symbol) @AlabasterDefinition)


((program . (hashfn) @AlabasterHashbang)
 (#match? @AlabasterHashbang "^#!/")
 (#set! "priority" 101))
