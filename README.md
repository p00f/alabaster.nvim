alabaster_dark.nvim
===

A neovim port of [alabaster for Sublime Text](https://github.com/tonsky/sublime-scheme-alabaster).

## Usage
```vim
set termguiclors
colorscheme alabaster_dark
```
## Configuration
Two config options are provided:
- `g:alabaster_dim_comments` (default: `false`). When true, comments are dimmed instead of being highlighteed bright yellow.
- `g:alabaster_floatborder` (default: `false`).
    When true, floating window borders have a foreground colour and background colour is the same as `Normal`.
    When false, floating window borders have no foreground colour and background colour is the same as popup menus.

## Treesitter
This colorscheme is designed with nvim-treesitter in mind (there is _some_ highlighting of the default highlight groups but the intended use is with treesitter). Please contribute queries if you can, following [these rules](https://github.com/tonsky/sublime-scheme-alabaster#motivation)

## Themed plugins
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [mhinz/vim-startify](https://github.com/mhinz/vim-startify)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [ggandor/lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)
- [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [mizlan/iswap.nvim](https://github.com/mizlan/iswap.nvim): use `ISwapSnipe` for `hl_snipe` and `ISwapGrey` for `hl_grey`
- [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)

## Screenshots

Rust
![swappy-20220130-111716](https://user-images.githubusercontent.com/36493671/151688511-c5d31f0d-80e7-4bee-a148-0171a608e5f2.png)

Telescope
![swappy-20220130-111801](https://user-images.githubusercontent.com/36493671/151688522-c2d3a5d9-f97f-4eba-9b28-f562eebd2491.png)

Neogit (also shows `DiffAdd` and `DiffDelete` highlight groups)
![swappy-20220130-112712](https://user-images.githubusercontent.com/36493671/151688542-657660cc-5478-4341-9ee1-553977e45408.png)

diffview.nvim (also shows `DiffChange` and `DiffText` highlight groups)
![swappy-20220130-112534](https://user-images.githubusercontent.com/36493671/151688555-cdfd45c6-4e9e-48fe-bb0c-3c5191de9906.png)

C++
![swappy-20220130-111917](https://user-images.githubusercontent.com/36493671/151689029-32c664ac-5514-46cf-9326-70b208849e5c.png)

Fennel
![swappy-20220130-112020](https://user-images.githubusercontent.com/36493671/151689036-56eb672d-f3ec-4784-aa62-582be472310d.png)

Clojure (same code and font as the one on the original ST theme's README for comparison)
(blue and magenta are switched in the original screenshot, the current ST theme matches this one)
![image](https://user-images.githubusercontent.com/36493671/159711835-cf18d1c4-6940-414a-830b-a7096268b014.png)

Help
![swappy-20220130-112338](https://user-images.githubusercontent.com/36493671/151689040-8eeeabdd-2aaa-418c-a3ab-8a7e09596abc.png)



## Alabaster dark for other tools
- [wezterm](https://gist.github.com/p00f/ed538cf8a811184b23e065c0a5d3fc36)
- [kitty](https://gist.github.com/p00f/ff17b05ff918559852ca7cb9d89432c1)
- [alacritty](https://gist.github.com/p00f/37173508c85e33a4efa7aa394c0b763f)
- [zathura](https://gist.github.com/p00f/aad0abbd3a9cef67562a8ea1aadd2a2e)
- [wofi](https://gist.github.com/p00f/46f41a8c2d85e5edf13fcd38ed130faa)
- [fzf/skim](https://gist.github.com/p00f/9d159123c78cbcf8e716c362cfd4eb2b) (uses fish shell)

