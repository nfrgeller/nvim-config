vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>o", "<cmd> Oil <CR>")
vim.keymap.set("n", "<leader>e", "<cmd> lua vim.diagnostic.open_float() <CR>")
vim.keymap.set("n", "<leader>t", "<cmd> tabnext <CR>")
vim.keymap.set("n", "<leader>b", "<cmd> Telescope buffers <CR>")
vim.keymap.set("n", "<leader>z", "<cmd> Telescope current_buffer_fuzzy_find <CR>")
vim.keymap.set("c", "W", "w")
vim.keymap.set("c", "Q", "q")
