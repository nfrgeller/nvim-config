return {
	{
		"dkarter/bullets.vim",
		event = "BufReadPost",
		config = function()
			-- Enable bullets.vim for specific filetypes
			vim.g.bullets_enabled_filetypes = { "quarto", "markdown", "text", "gitcommit" }
		end,
	},

	-- other plugins
}
