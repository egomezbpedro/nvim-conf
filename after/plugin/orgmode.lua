
-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({

  org_agenda_files = {'~/org/*.org', '~/.code/wiki/*.org', '~/Personal/*/*/*.org', '~/Work/*/agenda.org'},
  org_default_notes_file = '~/org/refile.org',

  org_todo_keywords = {'Backlog(b)', 'InProgress(p)', 'Waiting(w)', '|', 'Done(d)', 'Cancelled(c)'},

  org_hide_leading_stars = true,

  org_todo_keyword_faces = {
      Backlog = ':foreground #98abaa :weight bold',
      InProgress = ':foreground #089dd4 :weight bold',
      Waiting = ':foreground #d79921 :weight bold',
      Done = ':foreground #79d87e :weight bold',
      Cancelled = ':foreground #545754 :weight bold',
  },

  org_capture_templates = {
      t = {
          description = 'Todo',
          template = '* TODO %?\n %u',
          target = '~/org/todo.org'
      },
      n = {
          description = 'Note',
          template = '\n* %t %?\n',
          target = '~/org/notes.org'
      },
      j = {
          description = 'Journal',
          template = '\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?',
          target = '~/org/journal/%<%Y-%m>.org'
      },
  },

  mappings = {
      org = {
          org_toggle_checkbox = '<leader>ct',
      }
  },
})
