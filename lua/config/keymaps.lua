
-- Make esc leave terminal mode
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-/>", "<cmd>close<CR>")

-- controversial?
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Open terminal and explore
vim.keymap.set("n", "<leader>t", ":term<CR>")
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
