require('telescope').load_extension('harpoon')
require('telescope').load_extension('git_worktree')

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>ed', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

vim.keymap.set('n', '<leader>Gs', require('telescope.builtin').git_status, { desc = '' })

vim.keymap.set('n', '<leader>m', ":Telescope harpoon marks<CR>", { desc = 'Harpoon [M]arks' })

vim.keymap.set("n", "<leader>gw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
vim.keymap.set("n", "<leader>gwc", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
vim.keymap.set("n", "<Leader>gn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)

vim.api.nvim_set_keymap("n", "<Leader><tab>", "<Cmd>lua require('telescope.builtin').commands()<CR>", {noremap=false})
vim.api.nvim_set_keymap("n", "tt", ":TodoTelescope<CR>", {noremap=true})
