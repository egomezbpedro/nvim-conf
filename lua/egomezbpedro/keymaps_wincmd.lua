local keymap = vim.keymap.set

-- [W]indow [M]ovements
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<space>h', '<C-w>h', { silent = true }, { desc = 'Move focus to the left window' })
keymap('n', '<space>l', '<C-w>l', { silent = true }, { desc = 'Move focus to the right window' })
keymap('n', '<space>j', '<C-w>j', { silent = true }, { desc = 'Move focus to the lower window' })
keymap('n', '<space>k', '<C-w>k', { silent = true }, { desc = 'Move focus to the upper window' })

keymap('n', '<space>wc', '<C-w>c', { desc = 'Move focus to the upper window' })

-- [W]indow [R]esize
keymap("n", "<leader>-", ":vertical resize -20<CR>")
keymap("n", "<leader>+", ":vertical resize +20<CR>")
keymap("n", "<leader>0", ":vertical resize 40<CR>")


-- [Q]uickfix [L]ist
keymap('n', '<A-j>', '<cmd>cnext<CR>')
keymap('n', '<A-k>', '<cmd>cprev<CR>')
keymap('n', '<A-o>', '<cmd>copen<CR>')
