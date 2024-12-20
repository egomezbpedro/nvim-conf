-- Basic syntax highlight
vim.opt.syntax = "on"
vim.opt.filetype.plugin = "on"
vim.opt.termguicolors = true

-- Mouse mode
-- `:help mouse`
vim.opt.mouse = 'a'

-- NVIM Mode
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Decrease update time
vim.opt.updatetime = 50
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 400

-- Configure how new splits should be opened
vim.opt.splitright = false
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect,noinsert,fuzzy,preview'

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Save undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

