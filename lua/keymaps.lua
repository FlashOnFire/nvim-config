-- [[ Basic Keymaps ]]

local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- map('n', '<leader>Q', '<CMD>lclose<CR>', { desc = 'Close diagnostic Quickfix list' })

-- Exit terminal mode with an easier shortcut
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode to learn nvim the chad way
-- map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move windows
map('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
map('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
map('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
map('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Window splits (disabled for now, conflicts with Leap.nvim)
-- map('n', 'sh', '<CMD>split<CR>')
-- map('n', 'sv', '<CMD>vsplit<CR>')

-- Window resize
map('n', '<M-left>', '<C-w>4<')
map('n', '<M-right>', '<C-w>4>')
map('n', '<M-up>', '<C-w>4+')
map('n', '<M-down>', '<C-w>4-')

-- Duplicate lines
map('n', '<C-M-d>', '<CMD>copy .<CR>', { noremap = true, silent = true, desc = 'Duplicate line' })
map('v', '<C-M-d>', "<CMD>copy '><CR>gv", { noremap = true, silent = true, desc = 'Duplicate selected lines' })

-- Black Hole register binds
map('n', 'x', '"_x')
map('n', '<M-p>', '"0p')
map('n', '<M-P>', '"0P')
map('v', '<M-p>', '"0p')
map('n', '<M-c>', '"_c')
map('n', '<M-C>', '"_C')
map('v', '<M-c>', '"_c')
map('v', '<M-C>', '"_C')
map('n', '<M-d>', '"_d')
map('n', '<M-D>', '"_D')
map('v', '<M-d>', '"_d')
map('v', '<M-D>', '"_D')

-- Easy buffer delete
map('n', '<leader>q', '<CMD>bd<CR>')
map('n', '<leader>Q', '<CMD>bd!<CR>')

-- File manipulation
map('n', '<C-C>', ':%y+<CR>', { noremap = true, desc = 'Copy all lines' })
map('n', '<C-S-A>', 'ggVG', { noremap = true, desc = 'Select all lines' })

-- File Navigation
map('n', '<S-Tab>', ':e #<CR>', { noremap = true, desc = 'Switch to last buffer' })

-- Misc
map({ 'n', 'v' }, '<C-N>', ':norm ', { noremap = true, desc = ':norm ' })

-- Neovide keymaps
if vim.g.neovide then
  map({ 'n', 'v', 'i' }, '<F11>', function() vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen end)
  map({ 'n', 'v', 'i' }, '<C-ScrollWheelUp>', function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1 end)
  map({ 'n', 'v', 'i' }, '<C-ScrollWheelDown>', function() vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1 end)
end

-- [[ Basic Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- vim: ts=2 sts=2 sw=2 et
