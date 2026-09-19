-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  -- just additional ones that I've added that didn't need their own file.
  { 'junegunn/fzf.vim', dependencies = { 'junegunn/fzf' } },
  { 'karb94/neoscroll.nvim', opts = {} }, -- smooth ctrl + d/u etc scroll.
  { 'numToStr/Comment.nvim', opts = {} },
}

-- Iterate over all Lua files in the plugins directory and load them.
-- `vim.fs.dir()` iteration order is unspecified and must not be relied upon.
local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
for file_name, ftype in vim.fs.dir(plugins_dir, { follow = true }) do
  if (ftype == 'file' or ftype == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    local ok, mod = pcall(require, 'custom.plugins.' .. module)
    if ok and mod then
      if type(mod) == 'table' and type(mod[1]) == 'table' then
        for _, v in ipairs(mod) do table.insert(plugins, v) end
      else
        table.insert(plugins, mod)
      end
    end
  end
end

return plugins
