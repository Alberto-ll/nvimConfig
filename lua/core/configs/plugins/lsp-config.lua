require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls","pyright","ast_grep"},


})

local on_attach=function(_,_)

	vim.keymap.set('n','K', vim.lsp.buf.hover,{})
	vim.keymap.set('n','I', vim.lsp.buf.implementation,{})
end





local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("lspconfig").lua_ls.setup{
on_attach=on_attach,
capabilities=capabilities,
}

require("lspconfig").pyright.setup{
on_attach=on_attach,
capabilities=capabilities,
}
require("lspconfig").ast_grep.setup{
on_attach=on_attach,
capabilities=capabilities,
}
