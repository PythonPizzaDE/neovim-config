vim.api.nvim_command([[
autocmd BufEnter *.html :DelimitMateOff
]])

vim.g.delimitMate_expand_cr = 1
