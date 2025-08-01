return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- null_ls.builtins.completion.spell,

				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.markdownlint,
				-- null_ls.builtins.diagnostics.mypy,
				-- null_ls.builtins.formatting.bibclean,
				-- null_ls.builtins.diagnostics.cppcheck,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
