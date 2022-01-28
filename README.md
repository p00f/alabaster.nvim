alabaster_dark.nvim
===

A neovim port of [alabaster for Sublime Text](https://github.com/tonsky/sublime-scheme-alabaster). Requires [lush.nvim](https://github.com/lush.nvim)

## Installation
Install [lush.nvim](https://github.com/rktjmp/lush.nvim) and this colorscheme using a package manager.

## Usage
```vim
set termguiclors
colorscheme alabaster_dark
```

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

## Screenshots

Rust
![image](https://user-images.githubusercontent.com/36493671/149557093-4d06667f-2f28-4095-8b74-944b84f7fd0d.png)
Telescope
![image](https://user-images.githubusercontent.com/36493671/149559619-07903fa7-196d-41c4-9af0-c8de0386080b.png)
Neogit (also shows `DiffDelete` highlight group)
![image](https://user-images.githubusercontent.com/36493671/149558725-689c3865-dcd7-4f42-b0a1-936d5b935a1b.png)
diffview.nvim (also shows `DiffChange`, `DiffText`, `DiffAdd` highlight groups)
![image](https://user-images.githubusercontent.com/36493671/149557553-3a46271b-8d54-48f9-b939-dbd23c49e628.png)
C++
![image](https://user-images.githubusercontent.com/36493671/149557907-7c262c1d-e5b1-4b0a-a81e-154d9c1fea63.png)
Fennel
![image](https://user-images.githubusercontent.com/36493671/149558090-2efd3fa3-8d91-422f-acd5-5358d7ae1d6d.png)

## Alabaster dark for other tools
- [wezterm](https://gist.github.com/p00f/ed538cf8a811184b23e065c0a5d3fc36)
- [kitty](https://gist.github.com/p00f/ff17b05ff918559852ca7cb9d89432c1)
- [alacritty](https://gist.github.com/p00f/37173508c85e33a4efa7aa394c0b763f)
- [zathura](https://gist.github.com/p00f/aad0abbd3a9cef67562a8ea1aadd2a2e)
- [wofi](https://gist.github.com/p00f/46f41a8c2d85e5edf13fcd38ed130faa)
- [fzf/skim](https://gist.github.com/p00f/9d159123c78cbcf8e716c362cfd4eb2b) (uses fish shell)

