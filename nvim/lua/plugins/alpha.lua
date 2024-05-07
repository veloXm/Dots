local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function createNewFile()
    local filename = vim.fn.input("File name: ", "", "file")
    if filename ~= "" then
        vim.cmd("edit " .. vim.fn.fnameescape(filename))
        vim.cmd("startinsert")
    end
end

dashboard.section.header.val = {
    [[                                                                       ]],
    [[  ██████   █████                   █████   █████  ███                  ]],
    [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
    [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
    [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
    [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
    [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
    [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
    [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
    [[                                                                       ]],
    [[                     π it be like that sometimes π                     ]]
}

dashboard.section.buttons.val = {
    dashboard.button("f", "  Find file", ":Telescope find_files hidden=true no_ignore=true<CR>"),
    dashboard.button("e", "  New file", function() createNewFile() end),
    dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
    dashboard.button("u", "  Update plugins", ":Lazy sync<CR>"),
    dashboard.button("r", "  Recently opened files", "<cmd>Telescope oldfiles<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>")
}

local handle, err = io.popen("fortune -s")
if err or handle == nil then
    dashboard.section.footer.val = "May the truth be found."
    alpha.setup(dashboard.opts)
    return
end
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune
alpha.setup(dashboard.opts)

