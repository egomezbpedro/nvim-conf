return {
    "tjdevries/present.nvim",
    config = function ()
        local set = vim.keymap.set
        set('n', '<leader>sp', '<cmd>PresentStart<CR>')
    end,
}
