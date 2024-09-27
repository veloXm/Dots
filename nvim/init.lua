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
require('plugins.lspkind')
require('plugins.lsp-zero')
require('plugins.alpha')
require('plugins.colorizer')
require('plugins.toggleterm')
require('plugins.neo-tree')
require('plugins.supermaven')

-- Color scheme
vim.cmd.colorscheme "catppuccin"

-------------------------------------------
