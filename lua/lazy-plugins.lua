-- [[ Configure and install plugins ]]

require('lazy').setup({
  require('plugins.guess-indents'),

  require('plugins.gitsigns'),

  require('plugins.which-key'),

  require('plugins.telescope'),

  require('plugins.lspconfig'),

  require('plugins.conform'),

  require('plugins.blink-cmp'),

  -- require('kickstart.plugins.tokyonight'),

  require('plugins.todo-comments'),

  require('plugins.mini'),

  require('plugins.treesitter'),

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  require('plugins.lint'),
  require('plugins.autopairs'),
  require('plugins.neo-tree'),

  ----
  require('plugins.cmake-tools'),
  require('plugins.colorful-menu'),
  require('plugins.crates'),
  require('plugins.leap'),
  require('plugins.monokai-pro'),
  require('plugins.oil'),
  require('plugins.render-markdown'),
  require('plugins.snacks'),
  require('plugins.suda'),
  require('plugins.trouble'),

  -- { import = 'custom.plugins' },

  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, { ---@diagnostic disable-line: missing-fields
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
