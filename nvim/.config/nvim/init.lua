require 'config.options'

-- load plugins
require 'config.lazy'

require 'config.keymaps'
require 'config.floating-terminal'
require 'config.autocmds'

vim.notify = require 'notify'
-- vim.cmd.colorscheme 'everforest'
vim.cmd 'colorscheme rose-pine'

require('luasnip.loaders.from_snipmate').load { paths = { './snippets' } }
