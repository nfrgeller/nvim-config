return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ruff", "clangd", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- setting up lsps
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.ruff.setup({})

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			-- lspconfig.pyright.setup({
			-- 	capabilities = capabilities,
			-- 	settings = {
			-- 		pyright = {
			-- 			-- Using Ruff's import organizer
			-- 			disableOrganizeImports = true,
			-- 		},
			-- 		python = {
			-- 			analysis = {
			-- 				-- Ignore all files for analysis to exclusively use Ruff for linting
			-- 				ignore = { "*" },
			-- 			},
			-- 		},
			-- 	},
			-- })
			require("lspconfig").pyright.setup({
				settings = {
					pyright = {
						-- Using Ruff's import organizer
						disableOrganizeImports = true,
					},
					python = {
						analysis = {
							-- Ignore all files for analysis to exclusively use Ruff for linting
							ignore = { "*" },
						},
					},
				},
				on_attach = function(client)
					-- Disable Pyright diagnostics (linting)
					client.handlers["textDocument/publishDiagnostics"] = function() end
				end,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
