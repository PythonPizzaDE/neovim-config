local cmd = vim.cmd
local cmd_nvim = vim.api.nvim_command
local g = vim.g

function gruvbox()
    -- g.gruvbox_baby_background_color = "dark"
    -- g.gruvbox_baby_telescope_theme = 1
    -- g.gruvbox_italic = 1
    -- g.gruvbox_bold = 0
    g.gruvbox_contrast_dark = 'hard'

    g.gruvbox_material_background = 'hard'
    -- cmd 'colorscheme gruvbox-material'
    cmd 'colorscheme gruvbox'
    -- cmd 'colorscheme gruvbox-baby'
end

g.material_style = 'darker'

-- cmd 'colorscheme material'

g.codedark_conservative = 0

gruvbox()

-- cmd 'colorscheme codedark'

-- cmd_nvim 'highlight CursorLine guibg=#2b2b2b'
-- cmd_nvim 'highlight CursorColumn guibg=#2b2b2b'
-- cmd_nvim 'highlight Normal ctermbg=none guibg=none'
-- cmd_nvim 'highlight EndOfBuffer ctermbg=none guibg=none'
