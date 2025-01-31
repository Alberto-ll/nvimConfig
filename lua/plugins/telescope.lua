-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config=function ()
	      local builtin = require('telescope.builtin')
	      require('telescope').setup{

  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      }
    }
  },
  pickers ={},
  extensions = {}
}
      end
    }



