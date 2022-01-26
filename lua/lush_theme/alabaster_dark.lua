local lush = require("lush")
local hsl = lush.hsl
local bg = hsl("#0e1415")
local fg = hsl("#cecece")
local punct_fg = hsl("#708b8d")
local def_fg = hsl("#71ade7")
local const_fg = hsl("#cc8bc9")
local active = hsl("#cd974b")
local string_fg = hsl("#95cb82")
local darker_fg = fg.darken(40)
local diffadd = hsl(100, 50, 50)
local diffdelete = hsl(2, 65, 50)
local diffchange = hsl(30, 85, 50)
local floatwin = bg.lighten(5)
local statusline = bg.lighten(4)
local comment = hsl("#dfdf8e")
local mistake = {
  fg = hsl("#c33c33"),
  bg = hsl("#2b1d1e"),
}
local error = mistake.fg.rotate(5).saturate(30)
local warn = diffchange.lighten(40)
local hint = def_fg.lighten(20)
local info = diffadd.lighten(20)
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

---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Comment({ fg = comment }),
    ColorColumn({ bg = bg.lighten(5) }),
    Conceal({ fg = fg.darken(15) }),
    Cursor({ bg = active, fg = hsl("#000000") }),
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn({ fg = fg, bg = bg.lighten(5) }),
    CursorLine({ bg = bg.lighten(5) }),
    Directory({ fg = ansi.blue }),
    DiffAdd({ bg = diffadd.darken(80), fg = fg }),
    DiffChange({ bg = diffchange.darken(80), fg = fg }),
    DiffDelete({ bg = diffdelete.darken(80), fg = fg }),
    DiffText({ bg = diffchange.darken(60), fg = fg }),
    EndOfBuffer({ fg = bg.lighten(20) }),
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg({ fg = error, bg = mistake.bg }),
    VertSplit({ bg = bg.lighten(10), fg = bg.lighten(10) }),
    Folded({ bg = bg.lighten(5), fg = fg.darken(40) }),
    FoldColumn({ bg = bg.lighten(5), fg = fg.darken(20) }),
    SignColumn({}),
    IncSearch({ bg = ansi.yellow, fg = bg }),
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr({ fg = fg.darken(50) }),
    CursorLineNr({ fg = ansi.blue, gui = "bold" }),
    MatchParen({ gui = "underline", sp = active }),
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg({ fg = ansi.green, gui = "bold" }),
    NonText({ fg = fg.darken(50) }),
    Normal({ bg = bg, fg = fg }),
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    FloatBorder({ bg = floatwin }),
    Pmenu({ bg = floatwin }),
    PmenuSel({ bg = bg.lighten(20) }),
    PmenuSbar({ bg = bg.lighten(10) }),
    PmenuThumb({ bg = bg.lighten(30) }),
    Question({ fg = diffadd }),
    QuickFixLine({ bg = bg.lighten(5) }),
    Search({ bg = bg.lighten(20) }),
    SpecialKey({ fg = ansi.cyan }),
    SpellBad({ bg = mistake.bg, fg = mistake.fg }),
    SpellCap({ gui = "undercurl", sp = ansi.blue }),
    SpellLocal({ gui = "undercurl", sp = ansi.cyan }),
    SpellRare({ gui = "undercurl", sp = ansi.magenta }),
    StatusLine({ bg = statusline, fg = fg }),
    StatusLineNC({ bg = statusline, fg = hsl("#9f9f9f") }),
    TabLine({ bg = statusline, fg = fg.darken(40) }),
    TabLineFill({ bg = statusline }),
    TabLineSel({ bg = statusline, fg = ansi.blue }),
    Title({ fg = const_fg }),
    Visual({ bg = hsl("#293334") }),
    VisualNOS({ bg = hsl("#293334") }),
    WarningMsg({ fg = comment.mix(diffchange, 60) }),
    WildMenu({ bg = bg.lighten(20) }),

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
    SpecialComment({ bg = bg.lighten(7), fg = ansi.blue }),
    debugPc({ bg = ansi.blue }),
    debugBreakpoint({ bg = ansi.red }),
    helpHyperTextJump({ fg = ansi.magenta }),

    Underlined({ gui = "underline" }), -- (preferred) text that stands out, HTML links
    Italic({ gui = "italic" }),

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error({ bg = mistake.bg, fg = mistake.fg }),

    Todo({ bg = comment.darken(20), fg = bg }),

    --- Diagnostic
    LspReferenceText({ bg = bg.lighten(12) }),
    LspReferenceRead({ bg = bg.lighten(12) }),
    LspReferenceWrite({ bg = bg.lighten(12), gui = "underline", sp = active }),
    LspCodeLens({ fg = fg.darken(55) }),
    LspCodeLensSeparator({ fg = fg.darken(55) }),

    --- Diagnostic
    DiagnosticError({ fg = error }),
    DiagnosticWarn({ fg = warn }),
    DiagnosticHint({ fg = hint }),
    DiagnosticInfo({ fg = info }),
    DiagnosticVirtualTextError({ bg = bg.lighten(7), fg = error }),
    DiagnosticVirtualTextWarn({ bg = bg.lighten(7), fg = warn }),
    DiagnosticVirtualTextHint({ bg = bg.lighten(7), fg = hint }),
    DiagnosticVirtualTextInfo({ bg = bg.lighten(7), fg = info }),

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
    TSStringRegex({ bg = bg.lighten(7), fg = const_fg }),
    TSStringEscape({ bg = bg.lighten(7), fg = const_fg }),
    TSSymbol({}),
    TSType({ fg = fg }),
    TSTypeBuiltin({ fg = fg }),
    TSVariable({ fg = fg }),
    TSVariableBuiltin({ fg = fg }),
    TSTag({ fg = fg }),
    TSTagDelimiter({ fg = punct_fg }),
    TSText({ fg = fg }),

    --- Theme specific
    AlabasterComment({ fg = comment }),
    AlabasterConstant({ fg = const_fg }),
    AlabasterDefinition({ fg = def_fg }),
    AlabasterPunct({ fg = punct_fg }),
    AlabasterString({ fg = string_fg }),
    --- Gitsigns
    GitSignsAdd({ fg = diffadd }),
    GitSignsChange({ fg = diffchange }),
    GitSignsDelete({ fg = diffdelete }),
    --- Telescope
    TelescopeBorder({ fg = bg.lighten(15) }),
    TelescopeMatching({ fg = diffchange.lighten(20) }),
    TelescopeMultiSelection({ fg = ansi.magenta }),
    TelescopePromptPrefix({ fg = ansi.blue }),
    TelescopeSelectionCaret({ fg = mistake.fg }),
    TelescopeTitle({ fg = ansi.blue, bg = bg.lighten(7) }),
    TelescopeResultsTitle({ fg = ansi.white, bg = bg.lighten(7) }),
    --- Neogit
    NeogitPopupActionDisabled({ fg = darker_fg }),
    NeogitPopupActionKey({ fg = ansi.magenta }),
    NeogitPopupOptionDisabled({ fg = darker_fg }),
    NeogitPopupOptionKey({ fg = ansi.blue }),
    NeogitPopupSwitchDisabled({ fg = darker_fg }),
    NeogitPopupSwitchEnabled({ fg = ansi.cyan }),
    NeogitPopupSwitchKey({ fg = ansi.magenta }),
    --- Fugitive
    diffAdded({ fg = diffadd }),
    diffRemoved({ fg = diffdelete }),
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
    HopUnmatched({ fg = fg.darken(70) }),
    --- Lightspeed
    LightspeedGreyWash({ fg = fg.darken(70) }),
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
  }
end)

return theme

-- vi:nowrap
