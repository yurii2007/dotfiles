require 'config.options'

-- load plugins
require 'config.lazy'

require 'config.keymaps'
require 'config.floating-terminal'
require 'config.autocmds'

vim.notify = require 'notify'
