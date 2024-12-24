return {
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

}
