return {
  'mfussenegger/nvim-lint',
  lazy = false,
  events = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require 'lint'

    lint.linters_by_ft = {
      rust = { 'clippy' },
      lua = { 'luac' },
      javascript = { 'eslint' },
      typescript = { 'eslint' },
      javascriptreact = { 'eslint' },
      typescriptreact = { 'eslint' },
    }
  end,
}
