require('plugins')

local colorscheme = 'rose-pine-moon'
local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

vim.opt.number = true

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true

vim.g.mapleader = ","
vim.keymap.set({"n", "i"}, "<Up>", "<Nop>")
vim.keymap.set({"n", "i"}, "<Down>", "<Nop>")
vim.keymap.set({"n", "i"}, "<Right>", "<Nop>")
vim.keymap.set({"n", "i"}, "<Left>", "<Nop>")

-- Set XenRT sequence and include files to xml for color
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.seq", "*.inc"},
  command = "setf xml",
})

