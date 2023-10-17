require('telescope').setup({
    extensions = {
        tldr = {}
    }
})

vim.keymap.set("n", "<leader>tl", "<cmd>lua require('tldr').pick()<CR>")
