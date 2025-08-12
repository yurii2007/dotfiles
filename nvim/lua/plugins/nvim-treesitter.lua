return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    auto_install = false,
    highlight = {
      enable = true,
    },
  },
}
