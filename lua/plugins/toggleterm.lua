return{
	  -- amongst your other plugins
	'akinsho/toggleterm.nvim',
  	version = "*",
	config = function ()
		local term = require("toggleterm")

		term.setup({
			open_mapping = [[<leader>t]],
	 		shell = 'powershell',
	 		insert_mappings = true,
			shade_terminals = false,
	 		shade_filetypes = {},
	 		hide_numbers = true,
	 		start_in_insert = true,
	 		direction = 'float',
	 		float_opts = {
				border = 'curved',
		 		winblend = 3,
	 		},
	 		auto_scroll = true,
		})
	end
}

