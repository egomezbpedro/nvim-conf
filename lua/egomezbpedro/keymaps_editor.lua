local keymap = vim.keymap.set
keymap('n', '<A-w>', '<cmd>w<cr>', { desc = 'Save file' })
keymap("n", "<A-e>", "<cmd>Oil<CR>")

-- Editor cut/paste buffer
keymap("x", "<leader>p", [["_dP]])
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])
keymap({ "n", "v" }, "<leader>d", [["_d]])

-- [E]ditor [B]asics
keymap("i", "jj", "<Esc>")
keymap("n", "<A-f>", vim.lsp.buf.format)
keymap("i", "<C-c>", "<Esc>")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- [R]eplace [S]tring
keymap("n", "<leader>rs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Center Jumps
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Center window when searching for a word
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

