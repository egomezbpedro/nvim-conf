-- FONT
vim.g.have_nerd_font = true
vim.opt.colorcolumn = "80"
vim.opt.guifont = { "Hack Nerd Font", "h14" }
--

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.scrolloff = 30
vim.opt.guicursor = ""
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes:1'

-- Editor Spaces vs Tabs
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'
