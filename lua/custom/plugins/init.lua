-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- just additional ones that I've added that didn't need its own file.
  { 'junegunn/fzf.vim', dependencies = { 'junegunn/fzf' } },
  { 'karb94/neoscroll.nvim', opts = {} }, -- smooth ctrl + d/u etc scroll.
  { 'numToStr/Comment.nvim', opts = {} },
}
