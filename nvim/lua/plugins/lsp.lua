return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"bashls",
				"ts_ls",
				"html",
				"cssls",
				"pylsp",
				"emmet_language_server",
			},
		})

		-- Show inline diagnostics text
		vim.diagnostic.config({
			virtual_text = { enable = true },
			severity_sort = true,
		})

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						-- Set "vim" as a global to make the Lua LSP stop complaining
						-- about it not being defined
						globals = { "vim" },
					},
				},
			},
		})

		vim.lsp.config("ts_ls", { capabilities = capabilities })
		vim.lsp.config("bashls", { capabilities = capabilities })
		vim.lsp.config("html", { capabilities = capabilities })
		vim.lsp.config("cssls", { capabilities = capabilities })
		vim.lsp.config("pylsp", { capabilities = capabilities })
		vim.lsp.config("emmet_language_server", { capabilities = capabilities })

		vim.keymap.set("n", "<C-A-m>", "<cmd>Mason<cr>")
		vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action)
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename)
		vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover)
		vim.keymap.set("n", "<leader>go", vim.diagnostic.open_float)
	end,
}
