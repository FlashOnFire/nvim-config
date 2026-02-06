---@module 'lazy'
---@type LazySpec
return {
  'smiggiddy/git-oil.nvim',
  dependencies = { 'stevearc/oil.nvim' },
  opts = {
    keymaps = {
      refresh = 'gor', -- Refresh git status
      toggle = 'tgo', -- Toggle plugin on/off
    },
  },
}
