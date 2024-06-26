-- General Neovim settings and configurations
---------------------------------------------------------------------------
local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

-- General
-- opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'                  -- Copy/paste to system clipboard
opt.completeopt = 'menuone,noinsert,noselect'  -- Autocomplete options
opt.swapfile = false                           -- No swap file
-- opt.colorcolumn = '81'                         -- Line lenght marker at 80 columns
-- opt.textwidth = 80                             -- Set textwidth to 80 columns
opt.wrap = false                               -- Wrap lines
vim.opt.fillchars:append({ eob = " " })        -- To remove tilde(~)
vim.cmd([[autocmd FileType * setlocal formatoptions-=ro]]) -- No comment on new line if existing line is commented

-- Neovim UI
opt.number = true           -- Show line number
opt.showmatch = true        -- Highlight matching parenthesis
opt.relativenumber = true   -- relativenumber
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus=3            -- Set global statusline
opt.cursorline= true        -- cursorline
vim.opt.scrolloff = 19      -- To keep the cursor in the center of the screen all the time
vim.opt.signcolumn = "yes"

-- Undo options
opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
opt.undofile = true

-- Tabs, Indent
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
opt.showtabline = 2

-- Disable builtin plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}
