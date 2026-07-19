-- autopairs
-- https://github.com/windwp/nvim-autopairs

<<<<<<< HEAD
---@module 'lazy'
---@type LazySpec
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
}
||||||| 2ea6bf6
---@module 'lazy'
---@type LazySpec
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
}
=======
vim.pack.add { 'https://github.com/windwp/nvim-autopairs' }
require('nvim-autopairs').setup {}
>>>>>>> upstream/master
