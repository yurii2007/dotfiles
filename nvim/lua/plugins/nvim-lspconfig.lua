return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = {
        library = {
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
    },
  },
  config = function()
    require('lspconfig').lua_ls.setup {}
    require('lspconfig').rust_analyzer.setup {}
    require('lspconfig').ts_ls.setup {}
    require('lspconfig').tailwindcss.setup {}
    require('lspconfig').taplo.setup {}
    require('lspconfig').pyright.setup {}

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Show references' })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, { desc = 'Show hover documentation' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
    vim.keymap.set('i', '<C-Space>', function()
      vim.lsp.completion.get()
    end)
  end,
}
