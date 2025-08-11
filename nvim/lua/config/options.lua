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
  virtual_text = {
    enabled = true,
    spacing = 4,
    prefix = function(diagnostic, i, total)
      local icons = {
        [vim.diagnostic.severity.ERROR] = '󰅚',
        [vim.diagnostic.severity.WARN] = '󰀪',
        [vim.diagnostic.severity.INFO] = '󰋽',
        [vim.diagnostic.severity.HINT] = '󰌵',
      }

      return icons[diagnostic.severity] or '●'
    end,
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
    linehl = {
      [vim.diagnostic.severity.ERROR] = 'DiagnosticSignErrorLine',
      [vim.diagnostic.severity.WARN] = 'DiagnosticSignWarnLine',
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = 'DiagnosticSignError',
      [vim.diagnostic.severity.WARN] = 'DiagnosticSignWarn',
      [vim.diagnostic.severity.INFO] = 'DiagnosticSignInfo',
      [vim.diagnostic.severity.HINT] = 'DiagnosticSignHint',
    },
  },
}
