local keymap = vim.keymap.set

-- [W]indow [M]ovements
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<space>l', '<C-w>l', { silent = true })
keymap('n', '<space>h', '<C-w>h', { silent = true })
keymap('n', '<space>j', '<C-w>j', { silent = true })
keymap('n', '<space>k', '<C-w>k', { silent = true })

keymap('n', '<space>wc', '<C-w>c', { desc = 'Move focus to the upper window' })

-- [W]indow [R]esize
keymap("n", "<space>-", ":vertical resize -20<CR>")
keymap("n", "<space>+", ":vertical resize +20<CR>")
keymap("n", "<space>0", ":vertical resize 40<CR>")

-- [Q]uickfix [L]ist
keymap('n', '<space>nj', '<cmd>cnext<CR>')
keymap('n', '<space>nk', '<cmd>cprev<CR>')
keymap('n', '<space>o', '<cmd>copen<CR>')
keymap('n', '<leader>O', '<cmd>cclose<CR>')
