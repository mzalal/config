return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = "",
				section_separators = "",
			},
			sections = {
				lualine_a = {
					{
						"filename",
						path = 4,
					},
				},
				lualine_x = { "encoding", "filetype" },
			},
		})
	end,
}
