-- Git related plugins
return {

    "tpope/vim-fugitive",
    config = function ()
        local map = require("helpers.keys").map

        map("n", "<leader>g", "<cmd>vertical Git<CR>", "Git Status")

        map("n", "<leader>gl", "<cmd>vertical Git log<CR>", "Git Log")
        map("n", "<leader>glo", "<cmd>vertical Git log --oneline --decorate --graph<CR>", "Git Log -o -d -g")

        map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
        map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")

        map("n", "<leader>gpp", function()vim.cmd.Git('push') end, "Git Push")

        -- rebase
        map("n", "<leader>gpr", function() vim.cmd.Git({'pull',  '--rebase'})end, "Git pull --rebase")

        -- It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        map("n", "<leader>gpo", ":Git push -u origin ", "Git push origin");
    end
}
