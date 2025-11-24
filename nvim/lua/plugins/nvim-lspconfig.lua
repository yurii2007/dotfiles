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
    local lsp_list = {
      { name = 'lua_ls', enabled = true },
      { name = 'rust_analyzer', enabled = true },
      { name = 'ts_ls', enabled = true },
      { name = 'tailwindcss', enabled = true },
      { name = 'taplo', enabled = true },
      { name = 'cssls', enabled = true },
      { name = 'pyright', enabled = true },
      { name = 'jsonls', enabled = true },
    }

    for _, lsp in ipairs(lsp_list) do
      if lsp.enabled then
        vim.lsp.enable(lsp.name)
      end
    end

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Show references' })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
    vim.keymap.set('n', 'gh', require('.pretty_hover').hover, { desc = 'Show hover documentation' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
    vim.keymap.set('i', '<C-Space>', function()
      vim.lsp.completion.get()
    end)
  end,
}
