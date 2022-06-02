# chandrian-theme.nvim

The [VSCode's Chandrian theme by narenranjit](https://github.com/narenranjit/chandrian-theme), ported to nvim based on the semantically-aware code from [navarasu's OneDark theme](https://github.com/navarasu/onedark.nvim/).

It uses the Chandrian theme colors when the language can be semantically parsed through [treesitter](https://github.com/nvim-treesitter/nvim-treesitter), and uses OneDark as a fallback (and also for other file types, like markdown).

Requires neovim >= 0.5.

**WHY**: The Chandrian colorscheme colors your control-flow statements (if, for, return) in **warm** colors, and everything else in **cool** colors, making your program's flow identifiable through a single glance.

<h4><div align="center">
    <a href="#installation">Installation</a>
    <span> | </span>
    <a href="#screenshots">Screenshots</a>
    <span> | </span>
    <a href="#default-configuration">Configuration</a>
    <span> | </span>
    <a href="#customization">Customization</a>
    <span> &nbsp;&nbsp;&nbsp; &nbsp; </span>
</div></h4>


## Installation
Install via your favourite package manager
```vim
" Using Vim-Plug
Plug 'yogeshdhamija/chandrian-theme.nvim'
```

```lua
-- Using Packer
use 'yogeshdhamija/chandrian-theme.nvim'
```

## Screenshots
<img width="891" alt="Screen Shot 2022-06-03 at 3 30 20 PM" src="https://user-images.githubusercontent.com/4468354/171947772-5cb49de8-b9d5-449f-9277-e3b113faf05c.png">
<img width="889" alt="Screen Shot 2022-06-03 at 3 26 57 PM" src="https://user-images.githubusercontent.com/4468354/171947207-611fb157-0b8a-4876-9822-5c5f2ca918ae.png">
<img width="861" alt="Screen Shot 2022-06-03 at 3 27 32 PM" src="https://user-images.githubusercontent.com/4468354/171947288-1775d589-4c5d-4682-85f0-888b733fdd3b.png">

## Configuration

### Enable theme

```lua
-- Lua
require('chandrian').load()
```

```vim
" Vim
colorscheme chandrian
```

## Default Configuration

```lua
-- Lua
require('chandrian').setup  {
    -- Main options --
    style = 'dark', -- Currently the only option, and the default
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    -- toggle theme style ---
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark'}, -- Currently the only option

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
```

### Vimscript configuration

Chandrian can be configured also with Vimscript, using the global dictionary `g:chandrian_config`.
**NOTE**: when setting boolean values use `v:true` and `v:false` instead of 0 and 1

Example:
``` vim
let g:chandrian_config = {
  \ 'style': 'dark',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }
colorscheme chandrian
```

## Customization

Example custom colors and Highlights config

```lua
require('chandrian').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    TSKeyword = {fg = '$green'},
    TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
  }
}
```

## Plugins Configuration

### Enable lualine
To Enable the `
` theme for `Lualine`, specify theme as `chandrian`:

```lua
require('lualine').setup {
  options = {
    theme = 'chandrian'
    -- ... your lualine config
  }
}
```

## Plugins Supported
  + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  + [LSPDiagnostics](https://neovim.io/doc/user/lsp.html)
  + [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
  + [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  + [WhichKey](https://github.com/folke/which-key.nvim)
  + [Dashboard](https://github.com/glepnir/dashboard-nvim)
  + [Lualine](https://github.com/hoob3rt/lualine.nvim)
  + [GitGutter](https://github.com/airblade/vim-gitgutter)
  + [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
  + [VimFugitive](https://github.com/tpope/vim-fugitive)
  + [DiffView](https://github.com/sindrets/diffview.nvim)
  + [Hop](https://github.com/phaazon/hop.nvim)

## Contributing

Pull requests are welcome 🎉👍.

## License

[MIT](https://choosealicense.com/licenses/mit/)
