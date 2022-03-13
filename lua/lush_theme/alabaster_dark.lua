local lush = require("lush")
local hsl = lush.hsl
local bg = hsl("#0e1415")
local fg = hsl("#cecece")
local punct_fg = hsl("#708b8d")
local def_fg = hsl("#71ade7")
local const_fg = hsl("#cc8bc9")
local active = hsl("#cd974b")
local string_fg = hsl("#95cb82")
local darker_fg = hsl("#7d7d7d")
local diffadd = hsl("#6abf40")
local diffdelete = hsl("#d2322d")
local diffchange = hsl("#ec8013")
local statusline = hsl("#162022")
local comment = hsl("#dfdf8e")
local dim_comment = hsl("#696969")
local mistake = {
  fg = hsl("#c33c33"),
  bg = hsl("#2b1d1e"),
}
local error = hsl("#d13e23")
local warn = hsl("#f4b371")
local hint = hsl("#8ebeec")
local info = hsl("#88cc66")
local ansi = {
  black = hsl("#333333"),
  blue = hsl("#71aed7"),
  brightyellow = hsl("#dfdf8e"),
  cyan = hsl("#47bea9"),
  green = hsl("#95cb82"),
  magenta = hsl("#cc8bc9"),
  red = hsl("#c33c33"),
  white = hsl("#cecece"),
  yellow = hsl("#cd974b"),
}
local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
local pmenu_bg = hsl("#182325")
local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = fg.darken(75) }
  or {
    bg = float_bg,
    fg = float_bg,
  }

---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Comment({ fg = comment_fg }),
    ColorColumn({ bg = hsl("#182325") }),
    Conceal({ fg = fg.darken(15) }),
    Cursor({ bg = active, fg = hsl("#000000") }),
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn({ fg = fg, bg = hsl("#182325") }),
    CursorLine({ bg = hsl("#182325") }),
    Directory({ fg = ansi.blue }),
    DiffAdd({ bg = diffadd.darken(80), fg = fg }),
    DiffChange({ bg = diffchange.darken(80), fg = fg }),
    DiffDelete({ bg = diffdelete.darken(80), fg = fg }),
    DiffText({ bg = diffchange.darken(60), fg = fg }),
    EndOfBuffer({ fg = hsl("#354c50") }),
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg({ fg = error, bg = mistake.bg }),
    VertSplit({ bg = hsl("#212f31"), fg = hsl("#212f31") }),
    Folded({ bg = hsl("#182325"), fg = hsl("#7d7d7d") }),
    FoldColumn({ bg = hsl("#182325"), fg = fg.darken(20) }),
    SignColumn({}),
    IncSearch({ bg = ansi.yellow, fg = bg }),
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr({ fg = hsl("#5c5c5c") }),
    CursorLineNr({ fg = ansi.blue, gui = "bold" }),
    MatchParen({ gui = "underline", sp = active }),
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg({ fg = ansi.green, gui = "bold" }),
    NonText({ fg = hsl("#696969") }),
    Normal({ bg = bg, fg = fg }),
    NormalFloat({ bg = float_bg }),
    -- NormalNC     { }, -- normal text in non-current windows
    FloatBorder(floatborder),
    Pmenu({ bg = pmenu_bg }),
    PmenuSel({ bg = hsl("#354c50") }),
    PmenuSbar({ bg = hsl("#212f31") }),
    PmenuThumb({ bg = hsl("#47666b") }),
    Question({ fg = diffadd }),
    QuickFixLine({ bg = hsl("#182325") }),
    Search({ bg = hsl("#354c50") }),
    SpecialKey({ fg = ansi.cyan }),
    SpellBad({ bg = mistake.bg, fg = mistake.fg }),
    SpellCap({ gui = "undercurl", sp = ansi.blue }),
    SpellLocal({ gui = "undercurl", sp = ansi.cyan }),
    SpellRare({ gui = "undercurl", sp = ansi.magenta }),
    StatusLine({ bg = statusline, fg = fg }),
    StatusLineNC({ bg = statusline, fg = hsl("#9f9f9f") }),
    TabLine({ bg = statusline, fg = hsl("#7d7d7d") }),
    TabLineFill({ bg = statusline }),
    TabLineSel({ bg = statusline, fg = ansi.blue }),
    Title({ fg = const_fg }),
    Visual({ bg = hsl("#293334") }),
    VisualNOS({ bg = hsl("#293334") }),
    WarningMsg({ fg = comment.mix(diffchange, 60) }),
    WildMenu({ bg = hsl("#354c50") }),

    --- SYNTAX I: TS groups link to these
    Constant({ fg = const_fg }),
    String({ fg = string_fg }),
    Character({ fg = const_fg }),
    Number({ fg = const_fg }),
    Boolean({ fg = const_fg }),
    Float({ fg = const_fg }),
    Operator({ fg = punct_fg }),

    --- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
    Identifier({ fg = fg }),
    Function({ fg = def_fg }),
    Statement({ fg = fg }),
    Conditional({ fg = fg }),
    Repeat({ fg = fg }),
    Label({ fg = def_fg }),
    Keyword({ fg = fg }),
    Exception({ fg = fg }),
    PreProc({ fg = fg }),
    Include({ fg = fg }),
    Define({ fg = fg }),
    Macro({ fg = fg }),
    PreCondit({ fg = fg }),
    Type({ fg = fg }),
    StorageClass({ fg = fg }),
    Structure({ fg = def_fg }),
    Typedef({ fg = def_fg }),

    Special({ fg = ansi.yellow }),
    -- TODO better color than diffchange, try reddish
    -- SpecialChar({ fg = diffchange }), --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { },
    SpecialComment({ bg = hsl("#1d292b"), fg = ansi.blue }),
    debugPc({ bg = ansi.blue.darken(80) }),
    debugBreakpoint({ bg = ansi.red.darken(10).saturate(10) }),
    helpHyperTextJump({ fg = ansi.magenta }),
    helpSectionDelim({ fg = ansi.magenta }),
    helpExample({ fg = ansi.cyan }),
    helpCommand({ fg = ansi.cyan }),
    helpHeadline({ fg = ansi.blue }),
    helpHeader({ fg = ansi.magenta }),

    Underlined({ gui = "underline" }), -- (preferred) text that stands out, HTML links
    Italic({ gui = "italic" }),

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error({ bg = mistake.bg, fg = mistake.fg }),

    Todo({ bg = comment.darken(20), fg = bg }),

    --- Diagnostic
    LspReferenceText({ bg = hsl("#253437") }),
    LspReferenceRead({ bg = hsl("#253437") }),
    LspReferenceWrite({ bg = hsl("#253437"), gui = "underline", sp = active }),
    LspCodeLens({ fg = hsl("#5c5c5c") }),
    LspCodeLensSeparator({ fg = hsl("#5c5c5c") }),

    --- Diagnostic
    DiagnosticError({ fg = error }),
    DiagnosticWarn({ fg = warn }),
    DiagnosticHint({ fg = hint }),
    DiagnosticInfo({ fg = info }),
    DiagnosticVirtualTextError({ bg = hsl("#1d292b"), fg = error }),
    DiagnosticVirtualTextWarn({ bg = hsl("#1d292b"), fg = warn }),
    DiagnosticVirtualTextHint({ bg = hsl("#1d292b"), fg = hint }),
    DiagnosticVirtualTextInfo({ bg = hsl("#1d292b"), fg = info }),

    --- Treesitter
    TSAttribute({}),
    TSConstructor({ fg = fg }),
    TSConditional({ fg = fg }),
    TSConstBuiltin({ fg = const_fg }),
    TSConstMacro({ fg = fg }),
    TSError({ bg = mistake.bg, fg = mistake.fg }),
    TSException({ fg = fg }),
    TSField({ fg = fg }),
    TSFunction({ fg = fg }),
    TSFuncBuiltin({ fg = fg }),
    TSFuncMacro({ fg = fg }),
    TSKeyword({ fg = fg }),
    TSKeywordFunction({ fg = fg }),
    TSLabel({ fg = fg }),
    TSMethod({ fg = fg }),
    TSNamespace({ fg = fg }),
    TSNone({ fg = const_fg }),
    TSParameter({ fg = fg }),
    TSParameterReference({ fg = fg }),
    TSProperty({ fg = fg }),
    TSPunctDelimiter({ fg = punct_fg }),
    TSPunctBracket({ fg = fg.darken(10) }),
    TSPunctSpecial({ fg = punct_fg }),
    TSRepeat({ fg = fg }),
    TSString({ fg = string_fg }),
    TSStringRegex({ bg = hsl("#1d292b"), fg = const_fg }),
    TSStringEscape({ bg = hsl("#1d292b"), fg = const_fg }),
    TSSymbol({}),
    TSType({ fg = fg }),
    TSTypeBuiltin({ fg = fg }),
    TSVariable({ fg = fg }),
    TSVariableBuiltin({ fg = fg }),
    TSTag({ fg = fg }),
    TSTagDelimiter({ fg = punct_fg }),
    TSText({ fg = fg }),

    --- Theme specific
    AlabasterConstant({ fg = const_fg }),
    AlabasterDefinition({ fg = def_fg }),
    AlabasterPunct({ fg = punct_fg }),
    AlabasterString({ fg = string_fg }),
    --- Gitsigns
    GitSignsAdd({ fg = diffadd }),
    GitSignsChange({ fg = diffchange }),
    GitSignsDelete({ fg = diffdelete }),
    --- Telescope
    TelescopeBorder({ fg = hsl("#2b3d40") }),
    TelescopeMatching({ fg = hsl("#f09942") }),
    TelescopeMultiSelection({ fg = ansi.magenta }),
    TelescopePromptPrefix({ fg = ansi.blue }),
    TelescopeSelectionCaret({ fg = mistake.fg }),
    TelescopeTitle({ fg = ansi.brightyellow }),
    TelescopeResultsTitle({ fg = ansi.yellow }),
    --- Neogit
    NeogitPopupActionDisabled({ fg = darker_fg }),
    NeogitPopupActionKey({ fg = ansi.magenta }),
    NeogitPopupOptionDisabled({ fg = darker_fg }),
    NeogitPopupOptionKey({ fg = ansi.blue }),
    NeogitPopupSwitchDisabled({ fg = darker_fg }),
    NeogitPopupSwitchEnabled({ fg = ansi.cyan }),
    NeogitPopupSwitchKey({ fg = ansi.magenta }),
    --- Fugitive
    diffAdded({ bg = diffadd.darken(80), fg = fg }),
    diffRemoved({ bg = diffdelete.darken(80), fg = fg }),
    --- Startify
    StartifyBracket({ fg = darker_fg }),
    StartifyFile({ fg = fg }),
    StartifySection({ fg = ansi.green }),
    StartifySlash({ fg = ansi.blue }),
    --- Statusline
    StatuslineAdd({ fg = diffadd, bg = statusline }),
    StatuslineErr({ fg = error, bg = statusline }),
    StatuslineHint({ fg = hint, bg = statusline }),
    StatuslineInfo({ fg = info, bg = statusline }),
    StatuslineWarn({ fg = warn, bg = statusline }),
    --- ALE
    ALEWarningSign({ fg = warn }),
    --- vim-matchup
    MatchupVirtualText({ fg = ansi.yellow }),
    --- For `highlight link`
    AlabasterBlack({ fg = ansi.black }),
    AlabasterBlue({ fg = ansi.blue }),
    AlabasterBrightYellow({ fg = ansi.brightyellow }),
    AlabasterCyan({ fg = ansi.cyan }),
    AlabasterGreen({ fg = ansi.green }),
    AlabasterMagenta({ fg = ansi.magenta }),
    AlabasterRed({ fg = ansi.red }),
    AlabasterWhite({ fg = ansi.white }),
    AlabasterYellow({ fg = ansi.yellow }),
    --- Hop
    HopNextKey({ fg = ansi.brightyellow }),
    HopNextKey1({ fg = ansi.cyan }),
    HopNextKey2({ fg = ansi.cyan.darken(40) }),
    HopUnmatched({ fg = hsl("#3d3d3d") }),
    --- Lightspeed
    LightspeedGreyWash({ fg = hsl("#3d3d3d") }),
    --- checkhealth
    healthSuccess({ fg = ansi.green, bg = bg }),
    --- cmp
    CmpItemMenuDefault({ fg = ansi.magenta }),
    --- nvim-ts-rainbow
    rainbowcol1({ fg = ansi.yellow }),
    rainbowcol2({ fg = ansi.magenta }),
    rainbowcol3({ fg = ansi.blue }),
    rainbowcol4({ fg = ansi.yellow }),
    rainbowcol5({ fg = ansi.magenta }),
    rainbowcol6({ fg = ansi.blue }),
    rainbowcol7({ fg = ansi.red }),
    --- Iswap
    ISwapSnipe({ bg = ansi.yellow, fg = bg }),
    ISwapGrey({ fg = hsl("#3d3d3d") }),
    --- vim-dadbod-ui
    dbui_help({ fg = dim_comment }),
    dbui_connection_source({ fg = dim_comment }),
  }
end)

return theme

-- vi:nowrap
