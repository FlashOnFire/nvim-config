---@module 'lazy'
---@type LazySpec
return {
  'OXY2DEV/markview.nvim',
  lazy = false,
  config = function(_, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>tm', '<CMD>Markview Toggle<CR>', { noremap = true, desc = '[Toggle] [M]arkdown rendering' })
    if opts then
      require('markview').setup(opts)
    end
  end,
  opts = {
    preview = {
      filetypes = { 'markdown', 'codecompanion' },
      ignore_buftypes = {},
    },
  },
  -- Completion for `blink.cmp`
  -- dependencies = { 'saghen/blink.cmp' },
}
