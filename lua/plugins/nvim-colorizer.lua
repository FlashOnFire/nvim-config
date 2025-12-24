---@module 'lazy'
---@type LazySpec
return {
  {
    'catgoose/nvim-colorizer.lua',
    event = 'VeryLazy',
    keys = {
      {
        '<leader>tc',
        '<cmd>ColorizerToggle<CR>',
        mode = '',
        desc = '[T]oggle [C]olorizer',
      },
    },
    opts = {
      lazy_load = true,
      filetypes = {
        '*',
      },
      user_default_options = {
        css = true,
        css_fn = true,
        mode = 'virtualtext',
      },
    },
  },
}
