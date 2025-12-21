return {
  'stevearc/conform.nvim',
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>ff',
      function()
        require('conform').format { async = true }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      rust = { 'rustfmt' },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      python = { 'isort', 'black' },
    },
    default_format_opts = {
      lsp_format = 'fallback',
    },
    format_on_save = { timeout_ms = 1500 },
    formatters = {
      prettierd = {
        args = {
          '--stdin-filepath',
          '$FILENAME',
        },
      },
    },
  },
}
