-- key leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- basic settings
vim.wo.number = true
vim.o.relativenumber = true

vim.o.tabstop = 2 -- spaces per tab
vim.o.shiftwidth = 2
vim.o.softtabstop = 2 -- spaces when pressing tab
vim.o.expandtab = true -- convert tabs to spaces

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.cursorline = true

vim.opt.showmode = false

vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 5

vim.opt.cmdheight = 0

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "‿" }
