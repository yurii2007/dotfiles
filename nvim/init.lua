require 'config.options'

-- load plugins
require 'config.lazy'

require 'config.keymaps'
require 'config.floating-terminal'
require 'config.autocmds'

vim.notify = require 'notify'
vim.cmd.colorscheme 'kanagawa'

require('luasnip.loaders.from_snipmate').load { paths = './snippets' }
