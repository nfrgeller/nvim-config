-- plugins/quarto.lua
return {
	{
		"quarto-dev/quarto-nvim",
		dependencies = {
			"jmbuhr/otter.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			local quarto = require("quarto")
			quarto.setup()
			vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, { silent = true, noremap = true })
			vim.keymap.set("n", "<leader>qcp", quarto.quartoClosePreview, { silent = true, noremap = true })
			vim.keymap.set("n", "<leader>qsp", "i```{python}<CR>```<Esc>O")
			vim.keymap.set("n", "<leader>qsj", "i```{julia}<CR>```<Esc>O")
			vim.keymap.set("n", "<leader>qsr", "i```{r}<CR>```<Esc>O")
			vim.keymap.set("n", "<leader>qso", "i```{ojs}<CR>```<Esc>O")
			vim.keymap.set("n", "<leader>qsc", "i```<CR>```<Esc>O")
			vim.keymap.set("n", "<leader>qip", "i`{python}`<Esc>i")
			vim.keymap.set("n", "<leader>qij", "i`{julia}`<Esc>i")
			vim.keymap.set("n", "<leader>qir", "i`{r}`<Esc>i")
			vim.keymap.set("n", "<leader>qic", "i``<Esc>i")
		end,
	},

	{
		"jmbuhr/otter.nvim",
		config = function()
			require("otter").setup({
				lsp = {
					auto_attach = true,              -- Auto attach to Quarto files
					filetypes = { "markdown", "quarto" }, -- Treat .qmd files as markdown
				},
			})
		end,
	},
}
