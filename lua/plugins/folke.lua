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
    -- { "stevearc/dressing.nvim", event = "VeryLazy" },

    -- local plugins need to be explicitly configured with dir
    --{ dir = "~/projects/secret.nvim" },
}
