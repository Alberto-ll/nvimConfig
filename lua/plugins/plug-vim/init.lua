local vim = vim
local Plug = vim.fn['plug#']
local PATH = "~/.config/nvim/plugged/"


vim.call('plug#begin', PATH)

-- NedTree (Explorador de archivos)
Plug('https://github.com/preservim/nerdtree')
Plug('https://github.com/ryanoasis/vim-devicons')
Plug('https://github.com/tiagofumo/vim-nerdtree-syntax-highlight')


vim.call('plug#end')
