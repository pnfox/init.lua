
-- Make esc leave terminal mode
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-/>", "<cmd>close<CR>")

-- controversial?
vim.keymap.set("i", "<C-c>", "<Esc>")
