vim.pack.add { 'https://github.com/rose-pine/neovim' }

require('rose-pine').setup {
  dim_inactive_windows = true,
  styles = { transparency = true },
  highlight_groups = {
    TelescopeBorder = { fg = 'highlight_high', bg = 'none' },
    TelescopeNormal = { bg = 'none' },
    TelescopePromptNormal = { bg = 'base' },
    TelescopeResultsNormal = { fg = 'subtle', bg = 'none' },
    TelescopeSelection = { fg = 'text', bg = 'base' },
    TelescopeSelectionCaret = { fg = 'rose', bg = 'rose' },
  },
}

vim.cmd.colorscheme 'rose-pine'
vim.cmd.hi 'Comment gui=none'
