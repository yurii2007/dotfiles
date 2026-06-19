local augroup = vim.api.nvim_create_augroup('UserConfig', {})

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = augroup,
  callback = function()
    vim.highlight.on_yank { timeout = 350 }
  end,
})

-- return to last edit position after reopening
vim.api.nvim_create_autocmd('BufReadPost', {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= line_count then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- linting after writing to a file
vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufWritePost', 'InsertLeave' }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    require('lint').try_lint()
  end,
})

vim.g.skip_ts_context_commentstring_module = true

local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
  return option == 'commentstring' and require('ts_context_commentstring.internal').calculate_commentstring() or get_option(filetype, option)
end
