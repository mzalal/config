return {
	"MeanderingProgrammer/render-markdown.nvim",
	config = function()
		require("render-markdown").setup({
			anti_conceal = {
				enabled = false,
			},
			sign = {
				enabled = false,
			},
		})

		vim.keymap.set("n", "<leader>rr", "<cmd>RenderMarkdown buf_toggle<cr>")
	end,
}
