return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,  -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		--options = {transparent = true,},
		config = function()
			vim.cmd([[colorscheme nightfox]])
		end,
	},
	"cocopon/iceberg.vim",
	config = function()
		vim.cmd([[colorscheme iceberg]])
	end,
	-- {
	-- 	"NLKNguyen/papercolor-theme",
	-- 	config = function()
	-- 		-- Set the colorscheme to PaperColor and explicitly specify the light variant
	-- 		vim.cmd("set background=light")
	-- 		vim.cmd("colorscheme PaperColor")
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	config = function()
	-- 		-- Set the variant to Latte
	-- 		require("catppuccin").setup({
	-- 			flavour = "latte", -- Options: latte, frappe, macchiato, mocha
	-- 		})
	-- 		-- Apply the colorscheme
	-- 		vim.cmd("colorscheme catppuccin")
	-- 	end,
	-- },
	-- {
	-- 	"mcchrish/zenbones.nvim",
	-- 	dependencies = { "rktjmp/lush.nvim" }, -- Zenbones requires the lush.nvim dependency
	-- 	config = function()
	-- 		-- Set Zenbones with the "Bright" variant
	-- 		vim.cmd("set background=light")
	-- 		vim.cmd("colorscheme zenbones")
	-- 	end,
	-- },
}
