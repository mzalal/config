return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>c",
				block = "<leader>c",
			},
			opleader = {
				line = "<leader>c",
				block = "<leader>c",
			},
		})
	end,
}
