-- Highlight todo, notes, etc in comments

---@module 'lazy'
---@type LazySpec
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  ---@module 'todo-comments'
  ---@type TodoOptions
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    signs = true,
    keywords = { -- Some better colors that are better on light mode.
      TODO = { color = '#ff7400' },
      PERF = { color = '#50C878' },
      NOTE = { color = '#aeaeae' },
      TEST = { color = '#C4B454' },
      ISSUE = { color = '#FF3131' },
      REF = { icon = '', color = '#FF00FF', alt = { 'REFERENCE', 'REF' } },
    },
    colors = {
      error = { 'DiagnosticError', 'ErrorMsg', '#DC2626' },
    },
  },
}
-- ISSUE:
-- TODO:
-- PERF:
-- HACK:
-- WARN:
-- NOTE:
-- TEST:
-- REF: Reference label.
-- vim: ts=2 sts=2 sw=2 et
