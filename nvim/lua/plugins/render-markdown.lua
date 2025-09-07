return {
	"MeanderingProgrammer/render-markdown.nvim",
	config = function()
		require("render-markdown").setup({
			anti_conceal = {
				enabled = false,
			},
		})
	end,
}
