local builtin = require('telescope.builtin')
local actions = require'telescope.actions'
--vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '\\ff', builtin.find_files, {})
vim.keymap.set('n', '\\gg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>gs', builtin.grep_string, {})
--vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>s', builtin.lsp_references, {})

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<ESC>"] = actions.close,
      },
    },
  },
}
--local telescope = pcall(require, 'telescope')
--local actions = require 'telescope.actions'
--local action_state = require 'telescope.actions.state'
--local previewers = require 'telescope.previewers'
--local pickers = require 'telescope.pickers'
--local sorters = require 'telescope.sorters'
--local finders = require 'telescope.finders'
--local themes = require 'telescope.themes'
--local conf = require('telescope.config').values
--
--
--local default_picker_opts = {
--	grep_string = {
--		prompt_title = 'word under cursor',
--	},
--	live_grep = {
--		file_ignore_patterns = ignore_these,
--	},
--	git_commits = {
--		selection_strategy = 'row',
--		prompt_title = 'git log',
--	},
--	buffers = {
--		show_all_buffers = true,
--		attach_mappings = function(_, local_map)
--			local_map('n', 'd', actions.delete_buffer)
--			local_map('i', '<c-x>', actions.delete_buffer)
--			return true
--		end,
--	},
--	git_branches = {
--		attach_mappings = function(_, local_map)
--			local_map('i', '<c-o>', actions.git_checkout)
--			local_map('n', '<c-o>', actions.git_checkout)
--			return true
--		end,
--		selection_strategy = 'row',
--	},
--	find_files = {
--		find_command = { 'fd', '--hidden', '--type', 'f' },
--		follow = true,
--		hidden = true,
--		no_ignore = false,
--	},
--	lsp_code_actions = themes.get_dropdown(),
--	lsp_range_code_actions = themes.get_dropdown(),
--}
--
--require('telescope').setup {
--	pickers = default_picker_opts,
--	defaults = {
--		vimgrep_arguments = {
--			'rg',
--			'--color=never',
--			'--no-heading',
--			'--with-filename',
--			'--line-number',
--			'--column',
--			'--smart-case',
--		},
--		layout_strategy = 'flex',
--		layout_config = {
--			prompt_position = 'top',
--			horizontal = {
--				mirror = true,
--				preview_cutoff = 100,
--				preview_width = 0.5,
--			},
--			vertical = {
--				mirror = true,
--				preview_cutoff = 0.4,
--			},
--			flex = {
--				flip_columns = 110,
--			},
--			height = 0.94,
--			width = 0.86,
--		},
--	},
--}
--
----vim.keymap.set('n', '<leader>ps', function()
----	builtin.grep_string({ search = vim.fn.input("Grep > ") });
----end)
