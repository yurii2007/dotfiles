vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- theme
vim.cmd.colorscheme 'zero_two_dark_obsidian'

vim.o.number = true
vim.o.relativenumber = true
vim.opt.scrolloff = 15
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '100'
vim.opt.showmatch = true
vim.opt.showmode = false
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait900-blinkoff400-blinkon250-Cursor/lCursor'

-- file handling
vim.opt.autoread = true
vim.opt.autowrite = false

-- behavior
vim.opt.clipboard:append 'unnamedplus'
vim.opt.modifiable = true

-- disabling netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
