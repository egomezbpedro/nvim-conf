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
keymap("n", "<leader>0", ":vertical resize 40<CR>")

keymap("n", "<C-s>h", "<C-w>H")
keymap("n", "<C-s>j", "<C-w>J")
keymap("n", "<C-s>k", "<C-w>K")
keymap("n", "<C-s>l", "<C-w>L")


-- [Q]uickfix [L]ist
keymap('n', '<A-j>', '<cmd>cnext<CR>')
keymap('n', '<A-k>', '<cmd>cprev<CR>')
keymap('n', '<A-o>', '<cmd>copen<CR>')
keymap('n', '<A-p>', '<cmd>cclose<CR>')
