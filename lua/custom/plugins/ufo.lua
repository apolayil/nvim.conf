vim.pack.add {
  'https://github.com/kevinhwang91/promise-async',
  'https://github.com/kevinhwang91/nvim-ufo',
}

local opts = {
    open_fold_hl_timeout = 150, -- Time in milliseconds to highlight the opened fold
    close_fold_kinds_for_ft = { -- Specify fold kinds to close for specific file types
      default = { 'imports', 'comment' }, -- Default behavior for all file types
      json = { 'array' }, -- Close 'array' folds for JSON files
      c = { 'array', 'comment' }, -- Close 'comment' and 'region' folds for C files
    },
}

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

vim.keymap.set('n', 'K', function()
  local winid = require('ufo').peekFoldedLinesUnderCursor()
  if not winid then vim.lsp.buf.hover() end
end)

require('ufo').setup(opts)
