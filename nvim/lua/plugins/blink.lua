return {
  'saghen/blink.cmp',
  version = '1.6',
  opts = {
    keymap = { preset = 'default', ['<C-d>'] = { 'accept', 'fallback' } },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
}
