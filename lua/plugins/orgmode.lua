return {
    {
        'nvim-orgmode/orgmode',
        event = 'VeryLazy',
        ft = { 'org' },
        config = function()
            -- Setup orgmode
            require('orgmode').setup({
                org_agenda_files = {'~/dtt/**/*', '~/rcms/**/*'},
                org_default_notes_file = '~/.org/refile.org',
                -- mappings = {
                    --     global = {
                        -- org_agenda = {'gA', '<Leader>oa'},
                        -- org_capture = {'gC', '<Leader>oc'}
                        -- }
                        -- }
                    })

                    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
                    -- add ~org~ to ignore_install
                    require('nvim-treesitter.configs').setup({
                        ensure_installed = 'org',
                    })
                end,
  },
  {
        "nvim-orgmode/telescope-orgmode.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-orgmode/orgmode",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("telescope").load_extension("orgmode")

            vim.keymap.set("n", "<leader>r", require("telescope").extensions.orgmode.refile_heading)
            vim.keymap.set("n", "<leader>oh", require("telescope").extensions.orgmode.search_headings)
            vim.keymap.set("n", "<leader>oi", require("telescope").extensions.orgmode.insert_link)
        end,
  }

}
