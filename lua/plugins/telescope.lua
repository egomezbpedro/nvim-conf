-- Telescope fuzzy finding (all the things)
return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make",                cond = vim.fn.executable("make") == 1 },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        -- Useful for getting pretty icons, but requires a Nerd Font.
        { 'nvim-tree/nvim-web-devicons',              enabled = vim.g.have_nerd_font },
    },

    -- Two important keymaps to use while in Telescope are:
      --  - Insert mode: <c-/>
      --  - Normal mode: ?
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules", "build", "dist", "yarn.lock", ".git/**"
                },
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<C-d>"] = false,
                    },
                },
            },
            pickers = {
                find_files = {
                    theme = "ivy",
                    hidden = true,
                }
            },
            ['ui-select'] = {
                require('telescope.themes').get_ivy(),
            },
            extension = {
                fzf = {},
            }
        })
        -- Enable telescope fzf native, if installed
        pcall(require("telescope").load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        local builtin = require('telescope.builtin')

        -- Help
        vim.keymap.set("n", "<C-p>", builtin.keymaps, { desc = "Search keymaps" })
        vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "[V]iew [H]elp Tags" })

        -- Files search
        vim.keymap.set("n", "<space><space>", builtin.find_files, { desc = "[P]roject [F]iles" })
        vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "[L]ive [G]rep" })

        -- Buffer
        vim.keymap.set("n", "<leader>gs", builtin.grep_string, { desc = "[G]rep [S]tring" })
        vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "[B]uffers" })
        vim.keymap.set('n', '<leader>rr', builtin.oldfiles, { desc = "[?] Find recently opened files"})
        vim.keymap.set("n", "<leader>/", function()
            -- You can pass additional configuration to telescope to change theme, layout, etc.
            builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                winblend = 10,
                previewer = false,
            }))
        end, { desc = "Search in current buffer" })
        vim.keymap.set("n", "<leader>vd", builtin.diagnostics, { desc = "[V]iew [D]iagnostics" })

        -- Harpoon
        vim.keymap.set('n', '<leader>m', ":Telescope harpoon marks<CR>", { desc = "Harpoon [M]arks" })

        -- Git search
        vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = "[G]it [F]iles" })
        vim.keymap.set('n', '<leader>Gs', builtin.git_status, { desc = "Git Satus" })
        vim.keymap.set("n", "<leader>gw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
        vim.keymap.set("n", "<leader>gwc", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
        vim.keymap.set("n", "<Leader>gn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>")

        -- TODOs
        vim.keymap.set("n", "do", ":TodoTelescope<CR>", { desc = "TODO List" })

        vim.keymap.set("n", "<leader>neo", function()
            require('telescope.builtin').find_files {
                cwd = vim.fn.stdpath("config")
            }
        end)

    end,
}
