-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
		},

		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-u>"] = false,
							["<C-d>"] = false,
						},
					},
				},
			})
            -- Enable telescope fzf native, if installed
            pcall(require("telescope").load_extension, "fzf")
            local map = require("helpers.keys").map
            local builtin = require('telescope.builtin')

            map("n", "<leader>pf", builtin.find_files, "[P]roject [F]iles")
            map("n", "<leader>gf", builtin.git_files, "[G]it [F]iles")
            map("n", "<leader>lg", builtin.live_grep, "[L]ive [G]rep")
            map("n", "<leader>gs", builtin.grep_string, "[G]rep [S]tring")
            map("n", "<leader>b", builtin.buffers, "[B]uffers")
            map("n", "<leader>vh", builtin.help_tags, "[V]iew [H]elp Tags")
            map('n', '<leader>rr', builtin.oldfiles, '[?] Find recently opened files')
            map("n", "<leader>/", function()
                -- You can pass additional configuration to telescope to change theme, layout, etc.
                builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                    winblend = 10,
                    previewer = false,
                }))
            end, "Search in current buffer")
            map("n", "<leader>sd", builtin.diagnostics, "Diagnostics")
            map("n", "<C-p>", builtin.keymaps, "Search keymaps")
            map('n', '<leader>Gs', builtin.git_status, "Git Satus")
            map('n', '<leader>m', ":Telescope harpoon marks<CR>", 'Harpoon [M]arks')
            map("n", "<leader>gw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
            map("n", "<leader>gwc", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
            map("n", "<Leader>gn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>")
            map("n", "tt", ":TodoTelescope<CR>", "TODO List")

		end,
	},
}
