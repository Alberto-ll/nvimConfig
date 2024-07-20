local vim = vim
local Plug = vim.fn['plug#']
local PATH = "~/.config/nvim/plugged/"


vim.call('plug#begin', PATH)

-- NedTree (Explorador de archivos)
Plug('https://github.com/preservim/nerdtree')
Plug('https://github.com/ryanoasis/vim-devicons')
Plug('https://github.com/tiagofumo/vim-nerdtree-syntax-highlight')



-- Tema 
Plug('https://github.com/morhetz/gruvbox')
-- status bar
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')

-- pairs
Plug('https://github.com/jiangmiao/auto-pairs')



-- Coc
Plug('neoclide/coc.nvim', {branch = 'release'})

vim.call('plug#end')
