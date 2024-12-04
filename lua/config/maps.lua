local key = vim.keymap.set

vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "


key('n','<C-right>',':wincmd l<CR>')
key('n','<C-left>',':wincmd h<CR>')
key('n','<C-down>',':wincmd j<CR>')
key('n','<C-up>',':wincmd k<CR>')
key('n', '<leader>ll',":Lazy <CR>")

key('n','	',':tabnext<CR>')
key('n','<leader>nn',':tabnew<CR>')
