require("toggleterm").setup{
    size = 20,

    float_opts = {
        border = 'curved'
    },

    direction = 'float',
    persist_mode = true,
    close_on_exit = true,

    -- auto_scroll = true
}

function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    -- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
