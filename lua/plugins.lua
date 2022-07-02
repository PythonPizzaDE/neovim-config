local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


require("plugin_settings")

return require('packer').startup(function(use)
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'sbdchd/neoformat'
    use 'mhinz/vim-signify'
    use { 'nvim-treesitter/nvim-treesitter' }
    use 'tpope/vim-commentary'
    -- use { 'neoclide/coc.nvim', branch = 'release' }
    use 'neovim/nvim-lspconfig'
    use 'tpope/vim-surround'
    use 'ryanoasis/vim-devicons'
    use 'Raimondi/delimitMate'
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', } }
    -- use { 'startup-nvim/startup.nvim' }
    use 'junegunn/goyo.vim'
    use 'preservim/tagbar'
    use 'vimwiki/vimwiki'

    use 'morhetz/gruvbox'
    use 'sainnhe/gruvbox-material'
    -- use 'gruvbox-community/gruvbox'
    use 'luisiacc/gruvbox-baby'
    use 'tomasiser/vim-code-dark'
    use 'marko-cerovac/material.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'navarasu/onedark.nvim'
    use 'danilo-augusto/vim-afterglow'

    use { 'wbthomason/packer.nvim' }

    if packer_bootstrap then
      require('packer').sync()
    end
end)
