return {
    -- {
    --     "dstein64/vim-startuptime",
    --     -- lazy-load on a command
    --     cmd = "StartupTime",
    --     -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    --     init = function()
    --         vim.g.startuptime_tries = 10
    --     end,
    -- },

    -- if some code requires a module from an unloaded plugin, it will be automatically loaded.
    -- So for api plugins like devicons, we can always set lazy=true
    { "nvim-tree/nvim-web-devicons", lazy = true },

    -- you can use the VeryLazy event for things that can
    -- load later and are not important for the initial UI
    { "stevearc/dressing.nvim", event = "VeryLazy" },

    -- {
    --     "Wansmer/treesj",
    --     keys = {
    --         { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
    --     },
    --     opts = { use_default_keymaps = false, max_join_length = 150 },
    -- },

    {
        "monaqa/dial.nvim",
        -- lazy-load on keys
        -- mode is `n` by default. For more advanced options, check the section on key mappings
        keys = { "<C-a>", { "<C-x>", mode = "n" } },
    },

    -- local plugins need to be explicitly configured with dir
    --{ dir = "~/projects/secret.nvim" },

    -- you can use a custom url to fetch a plugin
    { url = "git@github.com:folke/noice.nvim.git" },

    -- local plugins can also be configured with the dev option.
    -- This will use {config.dev.path}/noice.nvim/ instead of fetching it from GitHub
    -- With the dev option, you can easily switch between the local and installed version of a plugin
    { "folke/noice.nvim", dev = true },
}
