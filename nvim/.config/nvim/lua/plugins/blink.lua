return {
  'saghen/blink.cmp',
  version = '1.6',
  dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*', build = 'make install_jsregexp' },
  opts = {
    snippets = { preset = 'luasnip' },
    keymap = { preset = 'default', ['<C-d>'] = { 'accept', 'fallback' } },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = {
      documentation = { auto_show = false },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
}
