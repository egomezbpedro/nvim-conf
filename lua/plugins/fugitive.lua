return {
  {
    "tpope/vim-fugitive",
    config = function()
      local map = require("helpers.keys").map

      map({ "v", "n" }, "<leader>g", "<cmd>:vertical Git<cr>", "Git Status")
      map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
      -- map("n", "<leader>gb", "<cmd>Git blame <cr>", "Show the blame")

      -- PUSH
      map("n", "<leader>gp", function()
        vim.cmd.Git("push")
      end, "Git Push")

      -- PUll rebase always
      map("n", "<leader>gr", function()
        vim.cmd.Git({ "pull", "--rebase" })
      end, "Git pull --rebase")

      -- It allows me to easily set the branch i am pushing and any tracking
      -- needed if i did not set the branch up correctly
      map("n", "<leader>gu", ":Git push -u origin ", "Git push origin")
    end,
  },
}
