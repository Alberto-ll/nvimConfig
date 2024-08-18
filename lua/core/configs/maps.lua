
local key = vim.keymap.set

key('n','<C-right>',':wincmd l<CR>')
key('n','<C-left>',':wincmd h<CR>')
key('n','<C-down>',':wincmd j<CR>')
key('n','<C-up>',':wincmd k<CR>')

--nvim-tree

key('n','<C-e>', ':NvimTreeToggle<CR>')

-- tab
key('n','	',':tabnext<CR>')
key('n','<C-n>',':tabnew<CR>')

