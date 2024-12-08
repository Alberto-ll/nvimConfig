return{
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
	- - - - - - - - - - - - - - - - - - - - - - - - - - - 
	███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
	████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
	██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
	██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
	██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
	╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
  	- - - - - - - - - - - - - - - - - - - - - - - - - - - 

 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
		{ icon="M", key="m", desc="Mason", action=":Mason"},
          	{ icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
	  	{ icon="🗀", key="e", desc="File Explorer", action=":NvimTreeToggle"},
		{ icon = " ", key = "q", desc = "Quit", action = ":qa"},

        },
      },
    },
  },
}
