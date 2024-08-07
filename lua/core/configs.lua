vim.o.number= true
vim.o.relativenumber=true

vim.o.backspace = '2'
vim.o.showcmd = true
vim.o.autowrite=true
vim.o.cursorline=true

-- configuracion para hacer folding

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd([[ set nofoldenable]])

