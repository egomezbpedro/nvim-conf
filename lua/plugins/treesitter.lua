return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        {"nvim-treesitter/nvim-treesitter-textobjects"}, -- Syntax aware text-objects
        {
            "nvim-treesitter/nvim-treesitter-context", -- Show code context
            opts = {enable = true, mode = "topline", line_numbers = true}
        }
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {"markdown"},
            callback = function(ev)
                -- treesitter-context is buggy with Markdown files
                require("treesitter-context").disable()
            end
        })

        treesitter.setup({
            modules = {},
            ignore_install = {},
            ensure_installed = {
                "csv", "dockerfile", "gitignore", "go", "gomod", "gosum",
                "gowork", "javascript", "json", "lua", "markdown", "proto",
                "python", "rego", "ruby", "sql", "svelte", "yaml", "php"
            },
            indent = {enable = true},
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                disable = {"csv"} -- preferring chrisbra/csv.vim
            },
            textobjects = {select = {enable = true, lookahead = true}}
        })
    end
}
-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	build = ":TSUpdate",
-- 	dependencies = {
-- 		"windwp/nvim-ts-autotag",
-- 	},
-- 	config = function()
-- 		local treesitter = require("nvim-treesitter.configs")

-- 		treesitter.setup({
--             modules = {},
--             sync_install = false,
--             ignore_install = {},
--             auto_install = false,
-- 			highlight = {
-- 				enable = true,
-- 				additional_vim_regex_highlighting = false,
-- 			},
-- 			indent = { enable = true },
-- 			autotag = {
-- 				enable = true,
-- 			},
-- 			ensure_installed = {
-- 				"json",
-- 				"javascript",
-- 				"typescript",
-- 				"tsx",
-- 				"yaml",
-- 				"html",
-- 				"css",
-- 				"markdown",
-- 				"markdown_inline",
-- 				"bash",
-- 				"lua",
-- 				"vim",
-- 				"dockerfile",
-- 				"gitignore",
-- 				"c",
-- 				"rust",
--                 "go",
-- 			},
-- 			incremental_selection = {
-- 				enable = true,
-- 				keymaps = {
-- 					init_selection = "<C-space>",
-- 					node_incremental = "<C-space>",
-- 					scope_incremental = false,
-- 					node_decremental = "<bs>",
-- 				},
-- 			},
-- 			rainbow = {
-- 				enable = true,
-- 				disable = { "html" },
-- 				extended_mode = false,
-- 				max_file_lines = nil,
-- 			},
-- 			context_commentstring = {
-- 				enable = true,
-- 				enable_autocmd = false,
-- 			},
-- 		})
-- 	end,
-- }
