-- require('lspconfig').tsserver.setup{}
-- require('lspconfig').pyright.setup{}

local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)
    local api = vim.api
    local set_keymap = api.nvim_buf_set_keymap

    set_keymap(bufnr, 'n', '<leader>l', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

local cmp = require('cmp')

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    mapping = {
      ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        elseif not cmp.visible() then
            fallback()
        end
      end, { 'i', 's' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
    }, {
      { name = 'buffer' },
    })
  })


local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local servers = { 'pylsp', 'tsserver', 'jedi_language_server', 'rls', 'clangd', 'gopls', 'hls', 'emmet_ls' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup{
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    }
end

local pid = vim.fn.getpid()

require('lspconfig').omnisharp.setup {
    cmd = { 'omnisharp', '--languageserver', '--hostPID', tostring(pid) };
}
