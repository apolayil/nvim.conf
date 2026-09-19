vim.pack.add {
	'https://github.com/junegunn/fzf',
	'https://github.com/junegunn/fzf.vim',
	'https://github.com/karb94/neoscroll.nvim',
	'https://github.com/numToStr/Comment.nvim',
}

require('neoscroll').setup {}
require('Comment').setup {}

require 'custom.plugins.theme'
require 'custom.plugins.auto-dark-mode'
require 'custom.plugins.ghostty'
require 'custom.plugins.hardtime'
require 'custom.plugins.lualine'
require 'custom.plugins.nvim-spider'
require 'custom.plugins.precognition'
require 'custom.plugins.smartyank'
require 'custom.plugins.ufo'

-- vim: ts=2 sts=2 sw=2 et