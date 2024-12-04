return {
	"nvim-treesitter/nvim-treesitter",

	config=function ()
		local conf = require("nvim-treesitter.configs")

		conf.setup({
			ensure_installed = {"lua","python", "css","html"},
		})
	end 

}

