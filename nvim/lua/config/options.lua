vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- theme
vim.cmd.colorscheme("satsuki_dark")

vim.o.number = true
vim.o.relativenumber = true
vim.opt.scrolloff = 15
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.showmatch = true
vim.opt.showmode = false

-- file handling
vim.opt.autoread = true
vim.opt.autowrite = false

-- behavior
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true

-- disabling netrw for nvim-tree
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
