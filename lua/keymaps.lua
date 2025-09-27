-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- vim.keymap.set('n', '<leader>Q', '<CMD>lclose<CR>', { desc = 'Close diagnostic Quickfix list' })

-- Exit terminal mode with an easier shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode to learn nvim the chad way
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move windows
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Window splits (disabled for now, conflicts with Leap.nvim)
-- vim.keymap.set('n', 'sh', '<CMD>split<CR>')
-- vim.keymap.set('n', 'sv', '<CMD>vsplit<CR>')

-- Window resize
vim.keymap.set('n', '<M-left>', '<C-w>4<')
vim.keymap.set('n', '<M-right>', '<C-w>4>')
vim.keymap.set('n', '<M-up>', '<C-w>4+')
vim.keymap.set('n', '<M-down>', '<C-w>4-')

-- Duplicate lines
vim.keymap.set('n', '<C-M-d>', '<CMD>copy .<CR>', { noremap = true, silent = true, desc = 'Duplicate line' })
vim.keymap.set('v', '<C-M-d>', "<CMD>copy '><CR>gv", { noremap = true, silent = true, desc = 'Duplicate selected lines' })

-- Black Hole register binds
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '<M-p>', '"0p')
vim.keymap.set('n', '<M-P>', '"0P')
vim.keymap.set('v', '<M-p>', '"0p')
vim.keymap.set('n', '<M-c>', '"_c')
vim.keymap.set('n', '<M-C>', '"_C')
vim.keymap.set('v', '<M-c>', '"_c')
vim.keymap.set('v', '<M-C>', '"_C')
vim.keymap.set('n', '<M-d>', '"_d')
vim.keymap.set('n', '<M-D>', '"_D')
vim.keymap.set('v', '<M-d>', '"_d')
vim.keymap.set('v', '<M-D>', '"_D')

-- Easy buffer delete
vim.keymap.set('n', '<leader>q', '<CMD>bd<CR>')
vim.keymap.set('n', '<leader>Q', '<CMD>bd!<CR>')

-- Neovide tweaks
if vim.g.neovide then
  vim.keymap.set({ 'n', 'v', 'i' }, '<F11>', function() vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen end)
end

vim.keymap.set({ 'n', 'v', 'i' }, '<C-ScrollWheelUp>', function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1 end)
vim.keymap.set({ 'n', 'v', 'i' }, '<C-ScrollWheelDown>', function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1 end)

-- [[ Basic Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- vim: ts=2 sts=2 sw=2 et
