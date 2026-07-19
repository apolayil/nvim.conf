local function gh(repo) return 'https://github.com/' .. repo end

-- Highlight todo, notes, etc in comments
vim.pack.add { gh 'folke/todo-comments.nvim' }
require('todo-comments').setup {
	signs = false,
	keywords = {
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
}

-- vim: ts=2 sts=2 sw=2 et