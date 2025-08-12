vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- theme
vim.cmd.colorscheme 'yukinoshita_yukino'

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
vim.opt.winborder = 'rounded'

-- file handling
vim.opt.autoread = true
vim.opt.autowrite = false

-- behavior
vim.opt.clipboard:append 'unnamedplus'
vim.opt.modifiable = true

-- disabling netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config {
  severity_sort = true,
  float = {
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    header = '',
    prefix = '',
  },
  virtual_text = {
    enabled = true,
    format = function(diagnostic)
      local message = diagnostic.message
      if #message > 80 then
        message = message:sub(1, 77) .. '...'
      end

      local source = diagnostic.source
      if source then
        return string.format('%s [%s]', message, source)
      end
      return message
    end,
  },

  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '󰅚',
      [vim.diagnostic.severity.WARN] = '󰀪',
      [vim.diagnostic.severity.INFO] = '󰋽',
      [vim.diagnostic.severity.HINT] = '󰌵',
    },
  },
}

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', {
  fg = '#f38ba8',
  bg = '#3c1f1f',
})

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', {
  fg = '#f9e2af',
  bg = '#3c3017',
})

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', {
  fg = '#89dceb',
  bg = '#1e3a3f',
})

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', {
  fg = '#a6e3a1',
  bg = '#1e3a21',
})
