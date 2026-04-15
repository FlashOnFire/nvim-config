return {
  'olimorris/codecompanion.nvim',
  lazy = false,
  version = '^19.0.0',
  config = function(_, opts)
    -- Keybindings
    vim.keymap.set({ 'n', 'v' }, '<leader>ta', '<CMD>CodeCompanionChat toggle<CR>', { noremap = true, desc = '[C]odeCompanion [C]hat' })
    --
    -- Setup plugin
    require('codecompanion').setup(opts)
  end,
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
