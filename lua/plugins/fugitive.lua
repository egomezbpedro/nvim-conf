-- Git related plugins
return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"tpope/vim-fugitive",
		config = function ()
			local map = require("helpers.keys").map

            map("n", "<leader>gg", "<cmd>Git<cr>", "Git Status")
			map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
			map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")

            map("n", "<leader>gpp", function()vim.cmd.Git('push') end, "Git Push")
            -- rebase always
            map("n", "<leader>gpr", function() vim.cmd.Git({'pull',  '--rebase'})end, "Git pull --rebase")

            -- It allows me to easily set the branch i am pushing and any tracking
            -- needed if i did not set the branch up correctly
            map("n", "<leader>gpo", ":Git push -u origin ", "Git push origin");
		end
	}
}
