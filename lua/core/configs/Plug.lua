local vim = vim
local Plug = vim.fn['plug#']
local PATH = "~/.config/nvim/lua/plugged/"
vim.call('plug#begin',PATH)

-- explorador de archivo

Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')

-- mason

Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')

-- lsp setup
Plug('hrsh7th/nvim-cmp')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- snippets
Plug('rafamadriz/friendly-snippets')

-- sintaxis highlight
Plug('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})

-- theme
Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-lualine/lualine.nvim')

-- terminal
Plug('akinsho/toggleterm.nvim',{['tag']= '*'})

-- tab manager 
Plug('nanozuki/tabby.nvim')

-- autoclose
Plug('m4xshen/autoclose.nvim')

vim.call('plug#end')

