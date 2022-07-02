vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- map('<mode>', '<keybind>', '<action>', { noremap = true })
map('n', '<leader>f', ':Telescop find_files<CR>', { noremap = true })
map('n', '<leader>b', ':Telescop git_branches<CR>', { noremap = true })
map('n', '<leader>c', ':Telescop git_commits<CR>', { noremap = true })
map('n', '<leader>ns', ':noh<CR>', { noremap = true })
map('n', '<leader>v', ':vsplit<CR><c-w>l', { noremap = true })
map('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })
map('n', '<leader>q', ':q<CR>', { noremap = true })
map('n', '<leader>rt', ':retab<CR>', { noremap = true })
map('n', '<leader>db', ':lua require\'dap\'.toggle_breakpoint()<CR>', { noremap = true })
map('n', '<leader>dc', ':lua require\'dap\'.continue()<CR>', { noremap = true })

map('n', '<M-h>', '<c-w><left>', { noremap = true })
map('n', '<M-l>', '<c-w><right>', { noremap = true })
map('n', '<M-j>', '<c-w><down>', { noremap = true })
map('n', '<M-k>', '<c-w><up>', { noremap = true })

map('n', 'gd', '<c-]>', { noremap = true })
map('n', 'gt', ':!ctags ./*<CR><CR>', { noremap = true })

map('i', ',', ',<c-g>u', { noremap = true })
map('i', '.', '.<c-g>u', { noremap = true })
map('i', '!', '!<c-g>u', { noremap = true })
map('i', '?', '?<c-g>u', { noremap = true })
map("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
