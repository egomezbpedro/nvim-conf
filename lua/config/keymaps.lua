-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cf", "<cmd>cd %:h<CR>")

vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })

vim.keymap.set("n", "<leader>ww", ":w<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("x", "<leader>fx", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>cy", [["+y]])
vim.keymap.set("n", "<leader>cY", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>K", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>J", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>ms", "<cmd>print('%s/\\//g')<CR>")

vim.keymap.set("n", "<leader>-", ":vertical resize -20<CR>")
vim.keymap.set("n", "<leader>8", ":vertical resize 100<CR>")

-- Docker Compose
vim.keymap.set(
  "n", -- Normal mode
  "<leader>cu", -- Replace this with your preferred key binding
  [[:silent !tmux neww bash -c "docker compose up -d & while [ : ]; do sleep 1; done"<CR>]], -- The command to execute
  { noremap = true, silent = true }
)
vim.keymap.set(
  "n", -- Normal mode
  "<leader>cd", -- Replace this with your preferred key binding
  [[:silent !tmux neww bash -c "docker compose down & while [ : ]; do sleep 1; done"<CR>]], -- The command to execute
  { noremap = true, silent = true }
)

-- Python Commands
--
vim.keymap.set(
  "n", -- Normal mode
  "<leader>rp", -- Replace this with your preferred key binding
  [[:silent !tmux neww bash -c "python3 % & while [ : ]; do sleep 1; done"<CR>]], -- The command to execute
  { noremap = true, silent = true }
)
