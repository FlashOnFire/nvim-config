return {
  'nickjvandyke/opencode.nvim',
  version = '*', -- Latest stable release
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any; goto definition on the type or field for details
    }

    vim.keymap.set({ 'n', 'x' }, '<C-S-G>', function() require('opencode').ask('@this: ', { submit = true }) end, { desc = 'Ask opencode…' })
    vim.keymap.set({ 'n', 'x' }, '<C-A-S-G>', function() require('opencode').select() end, { desc = 'Execute opencode action…' })
    vim.keymap.set({ 'n', 't' }, '<C-.>', function() require('opencode').toggle() end, { desc = 'Toggle opencode' })

    vim.keymap.set({ 'n', 'x' }, '<leader>oar', function() return require('opencode').operator('@this ') end, { desc = 'Add range to opencode', expr = true })
    vim.keymap.set('n', '<leader>oal', function() return require('opencode').operator('@this ') .. '_' end, { desc = 'Add line to opencode', expr = true })

    vim.keymap.set('n', '<C-S-u>', function() require('opencode').command('session.half.page.up') end, { desc = 'Scroll opencode up' })
    vim.keymap.set('n', '<C-S-d>', function() require('opencode').command('session.half.page.down') end, { desc = 'Scroll opencode down' })
  end,
}
