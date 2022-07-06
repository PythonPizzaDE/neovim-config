local opt = vim.opt
local g = vim.g
local o = vim.o
local wo = vim.wo

o.clipboard = 'unnamedplus'
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.smarttab = true
o.ignorecase = true
o.wrap = false

wo.relativenumber = true
wo.number = true
wo.scrolloff = 6
wo.numberwidth = 4
-- wo.cursorline = true
-- wo.cursorcolumn = true
-- wo.t_Co='256'

-- opt.listchars = { eol = '↵', trail = '·' }
opt.listchars = { trail = '·' }
opt.list = true
opt.colorcolumn = "80"

-- vim.cmd [[ set guicursor= ]]

vim.cmd [[ set mouse=a ]]

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        vim.cmd [[ norm :Neoformat<CR><CR> ]]
    end
})

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*.html",
    callback = function()
        vim.cmd [[ set filetype=html ]]
    end
})
