-- Define keymaps of Neovim and installed plugins
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Remove mapped '.'
map('n', '.', '<Nop>')
-- Change leader to '.'
vim.g.mapleader = '.'

-- Neovim Shortcuts

-- Remove annoyance
map('n', '<C-.>', '<Nop>')
map('i', '<C-.>', '<Nop>')

-- Append easily
map('n', '<leader>a', 'A')

-- Switch to next buffer
map('n', '<Space>n', ':bn<CR>')
-- Delete buffer
map('n', '<Space>d', ':bd<CR>')

-- Create Split
map('n', '<leader>s', ':split<CR>')
map('n', '<leader>vs',':vsplit<CR>')

-- Stay sane
-- map('i', 'jj', '<C-c>')
-- map('i', 'kj', '<C-c>')
map('i', 'jk', '<C-c>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Windows resizing
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and w
map('n', '<leader>w', ':w<CR>')

-- Close the window easily
map('n', '<leader>q', ':q<CR>')

-- Yank the whole file easy
map('n', '<leader>y', ':%y<CR>')


-- PLUGINS KEYMAPS

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
