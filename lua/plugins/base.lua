return {
  -- nge trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
    enabled = false,
  },

  { "nvim-lua/plenary.nvim", lazy = true },
}
