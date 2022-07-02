cmd = vim.api.nvim_command

cmd('autocmd BufWritePre *.py Neoformat')
cmd('autocmd BufWritePre *.ts Neoformat')
cmd('autocmd BufWritePre *.js Neoformat')
cmd('autocmd BufWritePre *.tsx Neoformat')
cmd('autocmd BufWritePre *.jsx Neoformat')
cmd('autocmd BufWritePre *.css Neoformat')
cmd('autocmd BufWritePre *.scss Neoformat')
cmd('autocmd BufWritePre *.sass Neoformat')
cmd('autocmd BufWritePre *.yaml Neoformat')
cmd('autocmd BufWritePre *.md Neoformat')
