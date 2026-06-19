return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    auto_install = true,
    highlight = {
      enable = true,
    },
    ensure_installed = {
      'javascript',
      'typescript',
      'jsx',
      'javascriptreact',
      'tsx',
      'typescriptreact',
      'html',
      'css',
      'svelte',
    },
  },
}
