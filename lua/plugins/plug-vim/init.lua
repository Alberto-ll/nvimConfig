local vim = vim
local Plug = vim.fn['plug#']
local PATH = "~/.config/nvim/plugged/"


vim.call('plug#begin', PATH)

-- NedTree (Explorador de archivos)
Plug('https://github.com/preservim/nerdtree')




vim.call('plug#end')
