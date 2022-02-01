vim.opt.background = "dark"
vim.g.colors_name = "alabaster_dark"

package.loaded["lush_theme.alabaster_dark"] = nil
require("lush")(require("lush_theme.alabaster_dark"))

-- hlmap
local hl_map = vim.treesitter.highlighter.hl_map
hl_map["alabaster.definition"] = "AlabasterDefinition"
hl_map["alabaster.punctuation"] = "AlabasterPunct"
hl_map["alabaster.string"] = "AlabasterString"
hl_map["alabaster.constant"] = "AlabasterConstant"
