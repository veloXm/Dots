-- init.lua
---------------------------------------------

-- Lazy.nvim plugin manager
require('core.lazy')

-- Keymaps
require('core.keymaps')

-- Global options
require('core.options')

-- Plugins
require('plugins.autopairs')
require('plugins.telescope')
require('plugins.catppuccin')
require('plugins.telescope-undo')
require('plugins.lualine')
require('plugins.lsp-zero')
require('plugins.alpha')
require('plugins.colorizer')
require('plugins.nvim-tree')

-- colorscheme
vim.cmd.colorscheme "catppuccin"

-------------------------------------------
print("Whoozat! VISUALIZE THE DOOR !Whatzit")
