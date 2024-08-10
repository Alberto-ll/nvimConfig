
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	vim.keymap.set('n','<C-e>', ':NvimTreeToggle<CR>'),
	
	renderer={
	        indent_markers = {
        		enable = true,
        		inline_arrows = true,
        		icons = {
            			corner = "└",
            			edge = "│",
            			item = "│",
            			bottom = "─",
            			none = " ",
          },
        },
},
})
