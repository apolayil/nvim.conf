-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
  -- vim.opt.clipboard = 'unnamedplus'
-- end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd 'filetype indent on'

-- Colour Column
vim.opt.colorcolumn = '81'

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10


-- Toggle spell checking -> good for .md, who spell checks code
vim.keymap.set('n', '<leader>ts', function()
  vim.opt.spell = not vim.o.spell
  print('Spell checking is', (vim.o.spell and 'enabled' or 'disabled'))
end, { desc = '[T]oggle [S]pell' })




-- A very yucky way of changing the theme depending of time.
-- Checks the time and changes the theme on startup.
-- On OSX theres a plugin for this, will but on ssh, we gotta work with this.
function SetThemeBasedOnTime()
  local hour = tonumber(os.date '%H')
  local minute = tonumber(os.date '%M')

  local isLightThemeTime = false

  if hour > 5 and hour < 17 then
    isLightThemeTime = true
  elseif hour == 5 and minute >= 40 then
    isLightThemeTime = true
  elseif hour == 17 and minute < 40 then
    isLightThemeTime = true
  end

  if isLightThemeTime then
    vim.cmd [[colorscheme rose-pine-dawn]]
  else
    vim.cmd [[colorscheme rose-pine-moon]]
  end
end

-- vim: ts=2 sts=2 sw=2 et
