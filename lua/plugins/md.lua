return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && npm install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
        keys = { { "<leader>md", "<cmd>:MarkdownPreviewToggle <CR>", desc = "Markdown Preview" }}
    },
    {
        'jghauser/follow-md-links.nvim',
        config = function ()
            vim.keymap.set('n', 'B', ':edit #<cr>', { silent = true })
        end
    }
}
