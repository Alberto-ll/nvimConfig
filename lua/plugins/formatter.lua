return {
	"stevearc/conform.nvim",
	-- Version para nvim 0.9.*
	version = "v7.1.0",
	--version para nvim 0.10.*
	--version="*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
