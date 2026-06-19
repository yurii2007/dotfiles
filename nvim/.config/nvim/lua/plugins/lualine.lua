return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    icons_enabled = true,
    theme = 'palenight',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'diagnostics' },
      lualine_c = { { 'filename', path = 1 }, 'lsp_status' },
      lualine_x = { 'encoding', 'filetype' },
      lualine_y = {},
      lualine_z = { 'location' },
    },
  },
}
