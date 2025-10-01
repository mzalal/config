return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				["*"] = { "codespell" },
				lua = { "stylua" },
				sh = { "beautysh" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				markdown = { "prettier" },
				json = { "prettier" },
				python = { "black" },
				htmldjango = { "djlint" },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
