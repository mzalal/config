return {
	"lukas-reineke/indent-blankline.nvim",
	opts = {},
	config = function()
		require("ibl").setup({
			indent = {
				char = "│",
				tab_char = "│",
			},
		})
	end,
}
