Alabaster Color Scheme
===

A color scheme with minimal amount of highlighting for neovim.

## Motivation
(from the original [sublime text theme](https://github.com/tonsky/sublime-scheme-alabaster))

Most color schemes highlight everything they can, ending up looking like a fireworks show.

Instead, Alabaster uses minimal highlighting; it defines just four classes:

  1. Strings
  2. All statically known constants (numbers, symbols, keywords, boolean values)
  3. Comments
  4. Global definitions

Additionally:

- Alabaster does not highlight standard language keywords (if, else, function, etc). They are usually least important and most obvious part of any program.

- Alabaster highlights comments. Most schemes try to dim comments by using low-contrast greys. I think if code was complex enough that it deserved an explanation then it’s that explanation we should see and read first. It would be a crime to hide it.

- Alabaster doesn’t use font variations. It’s hard to scan code when it jumps between normal, **bold** and *italics* all the time. Also, not all fonts provide bold/italics variants.

- Having minimal amount of rules means you can consciously use them to look for the exact piece of information you need. Most other “fireworks” schemes provide only one meaningful contribution: if it’s colored it’s probably syntactically correct. Instead, in Alabaster you can actually remember all the rules, and e.g. if you need to look for a string you know that you’re looking for a green token. And all the strings really pop out because there are not many other things highlighted.

- Alabaster only highlights things that parser could identify reliably. I believe that if highlighting works only partially then it does more harm than good. When highlighting works reliably, your brain learns to rely on it. When it’s not reliable, your brain spends precious brain cycles to re-check everything it sees on the screen.

## NOTE
This is designed with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) in mind (there is _some_ highlighting of the default highlight groups but the intended use is with treesitter). **nvim-tressitter is an unstable plugin which may introduce breaking changes -- which can break this plugin -- at any time. Queries for some languages are bundled**. Please contribute queries if you can, following [these rules](https://github.com/tonsky/sublime-scheme-alabaster#motivation)

## Usage
```vim
set termguiclors
colorscheme alabaster
```
The TUI will likely detect your terminal background and set `background` accordingly. If you want to force light or dark mode, use `set background=dark` or `set background=light`
## Configuration
Two config options are provided:
- `g:alabaster_dim_comments` (default: `false`). When true, comments are dimmed instead of being highlighteed bright yellow.
- `g:alabaster_floatborder` (default: `false`).
    When true, floating window borders have a foreground colour and background colour is the same as `Normal`.
    When false, floating window borders have no foreground colour and background colour is the same as popup menus.

## Themed plugins
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
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
![rust-dark](https://user-images.githubusercontent.com/36493671/151688511-c5d31f0d-80e7-4bee-a148-0171a608e5f2.png)
![rust-light](https://user-images.githubusercontent.com/36493671/196017694-35155cb4-aabf-4a21-a6ec-83bab6b620a8.png)

Telescope
![telescope-dark](https://user-images.githubusercontent.com/36493671/151688522-c2d3a5d9-f97f-4eba-9b28-f562eebd2491.png)
![telescope-light](https://user-images.githubusercontent.com/36493671/196017714-75c15a62-c918-4199-89b1-3f092fb3b483.png)

Neogit (also shows `DiffAdd` and `DiffDelete` highlight groups)
![swappy-20220130-112712](https://user-images.githubusercontent.com/36493671/151688542-657660cc-5478-4341-9ee1-553977e45408.png)

diffview.nvim (also shows `DiffChange` and `DiffText` highlight groups)
![swappy-20220130-112534](https://user-images.githubusercontent.com/36493671/151688555-cdfd45c6-4e9e-48fe-bb0c-3c5191de9906.png)

C++
![cpp-dark](https://user-images.githubusercontent.com/36493671/151689029-32c664ac-5514-46cf-9326-70b208849e5c.png)
![cpp-light](https://user-images.githubusercontent.com/36493671/196017922-e6c5546b-5fc1-43e0-9d60-8cb07f07bfc6.png)

Fennel
![fennel-dark](https://user-images.githubusercontent.com/36493671/151689036-56eb672d-f3ec-4784-aa62-582be472310d.png)
![fennel-light](https://user-images.githubusercontent.com/36493671/196017739-1dafb70d-1474-48fb-a019-b64a25e8b946.png)

Clojure (same code and font as the one on the original ST theme's README for comparison)
(blue and magenta are switched in the original screenshot, the current ST theme matches this one)
![image](https://user-images.githubusercontent.com/36493671/159711835-cf18d1c4-6940-414a-830b-a7096268b014.png)

Help
![help-dark](https://user-images.githubusercontent.com/36493671/151689040-8eeeabdd-2aaa-418c-a3ab-8a7e09596abc.png)
![help-light](https://user-images.githubusercontent.com/36493671/196017663-966f361e-1548-4ab0-b8b7-6801d7dc3e30.png)



## Alabaster dark for other tools
- [wezterm](https://gist.github.com/p00f/ed538cf8a811184b23e065c0a5d3fc36)
- [kitty](https://gist.github.com/p00f/ff17b05ff918559852ca7cb9d89432c1)
- [alacritty](https://gist.github.com/p00f/37173508c85e33a4efa7aa394c0b763f)
- [zathura](https://gist.github.com/p00f/aad0abbd3a9cef67562a8ea1aadd2a2e)
- [wofi](https://gist.github.com/p00f/46f41a8c2d85e5edf13fcd38ed130faa)
- [fzf/skim](https://gist.github.com/p00f/9d159123c78cbcf8e716c362cfd4eb2b) (uses fish shell)

## Thanks
[projekt0n/github-nvim-theme](https://github.com/projekt0n/github-nvim-theme) for diff colours
