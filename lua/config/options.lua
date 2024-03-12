vim.opt.shiftround = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.undofile = true
vim.opt.wrap = false
vim.opt.number = true

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true

vim.g.mapleader = ","

vim.opt.scrolloff = 8

-- Set XenRT sequence and include files to xml for color
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.seq", "*.inc"},
  command = "setf xml",
})
