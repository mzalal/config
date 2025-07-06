return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			opleader = {
				line = "<leader>cc",
				block = "<leader>cb",
			},
		})
	end,
}
