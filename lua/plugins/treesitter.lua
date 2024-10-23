return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    commit = "ef52e44",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                -- "markdown_inline",
                -- "markdown",
                "latex",
                "r",
                "c",
                "cpp",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "elixir",
                "heex",
                "javascript",
                "html",
                "python",
                "rust",
            },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
