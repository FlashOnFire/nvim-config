-- [[ Setting options ]]

-- Line number / relative line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Allow usage of mouse in all modes
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  See `:help 'clipboard'`
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Indent every line that results from line wrapping
-- to form a block rather than indenting only the first line
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Always show sign column
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 200

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.o.inccommand = 'nosplit'

-- Show the current line in a slightly different color
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Indents
vim.o.autoindent = true
vim.o.smartindent = true

if vim.g.neovide then
  -- vim.o.guifont = 'JetBrainsMono Nerd Font:h16'
  vim.o.guifont = 'Iosevka Nerd Font Mono,Noto Color Emoji'
  -- vim.g.neovide_transparency = 0.8
  vim.g.neovide_fullscreen = true
end

-- vim: ts=2 sts=2 sw=2 et
