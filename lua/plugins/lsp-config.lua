-- config of lsp/mason/and autocompletion

return {

	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},

	config = function()
		local mason = require("mason")
		local lspconfig = require("mason-lspconfig")
		local cmp = require("cmp")

		-- mason config
		mason.setup({

			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- autocomplete

		require("luasnip").filetype_extend("htmldjango", { "html" })
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({

			mapping = cmp.mapping.preset.insert({

				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},

			sources = cmp.config.sources({

				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			}, {

				{ name = "buffer" },
			}),
		})

		-- lsp config

		lspconfig.setup({

			ensure_installed = { "lua_ls", "pyright" },
		})

		local on_attach = function(_, _)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "I", vim.lsp.buf.implementation, {})
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		require("lspconfig").lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		require("lspconfig").pyright.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
}
