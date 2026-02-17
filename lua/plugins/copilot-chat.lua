---@module 'lazy'
---@type LazySpec
return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    config = function(_, opts)
      vim.g.copilot_no_tab_map = true
      vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

      -- Auto-command to customize chat buffer behavior
      vim.api.nvim_create_autocmd('BufEnter', {
        pattern = 'copilot-*',
        callback = function()
          vim.opt_local.relativenumber = false
          vim.opt_local.number = false
          vim.opt_local.conceallevel = 0
        end,
      })

      -- Keybindings
      vim.keymap.set({ 'n', 'v' }, '<leader>ct', ':CopilotChatToggle<CR>', { noremap = true, desc = '[C]opilot Chat [T]oggle' })
      vim.keymap.set({ 'n', 'v' }, '<leader>cm', ':CopilotChatModels<CR>', { noremap = true, desc = '[C]opilot Chat [M]odels' })
      vim.keymap.set({ 'n', 'v' }, '<leader>cs', ':CopilotChatStop<CR>', { noremap = true, desc = '[C]opilot Chat [S]top' })

      require('CopilotChat').setup(opts)
    end,

    ---@class CopilotChat.config.Config
    opts = {
      model = 'claude-sonnet-4.5', -- AI model to use
      temperature = 0.1,

      window = {
        layout = 'vertical',
        width = 0.4,
      },

      -- headers = {
      --   user = '  ' .. (vim.env.USER or 'User') .. ' ',
      --   assistant = '  Copilot ',
      --   tool = '󰊳  Tool ',
      -- },
      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },

      auto_insert_mode = true, -- Automatically enter insert mode when opening window and on new prompt
    },
  },
}
