-- window resizing
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase window height' })

-- tab navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- telescope keymaps
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })

-- nvim tree
local api = require 'nvim-tree.api'

local git_add = function()
  local node = api.tree.get_node_under_cursor()
  local gs = node.git_status.file

  -- If the current node is a directory get children status
  if gs == nil then
    gs = (node.git_status.dir.direct ~= nil and node.git_status.dir.direct[1]) or (node.git_status.dir.indirect ~= nil and node.git_status.dir.indirect[1])
  end

  -- If the file is untracked, unstaged or partially staged, we stage it
  if gs == '??' or gs == 'MM' or gs == 'AM' or gs == ' M' then
    vim.cmd('silent !git add ' .. node.absolute_path)

  -- If the file is staged, we unstage
  elseif gs == 'M ' or gs == 'A ' then
    vim.cmd('silent !git restore --staged ' .. node.absolute_path)
  end

  api.tree.reload()
end

vim.keymap.set('n', 'ga', git_add, { desc = 'Git stage file' })
vim.keymap.set('n', '<C-e>', ':NvimTreeFocus<CR>', { desc = 'Focus on file explorer' })
vim.keymap.set('n', '<leader>ef', ':NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' })
vim.keymap.set('n', '<leader>ec', ':NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
vim.keymap.set('n', '<leader>er', ':NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })

vim.keymap.set('n', '<leader>fm', vim.diagnostic.open_float, { desc = 'Show full diagnostic message' })
vim.keymap.set('n', '<leader>nm', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>pm', vim.diagnostic.goto_prev, { desc = 'Go to prev diagnostic message' })
