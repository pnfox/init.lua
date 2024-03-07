
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

require('config.options')
require('config.keymaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  spec = {
    { import = "plugins" },
  }
})
