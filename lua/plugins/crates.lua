---@module 'lazy'
---@type LazySpec
return {
  'saecki/crates.nvim',
  event = { 'BufRead Cargo.toml' },
  tag = 'stable',
  opts = {
    insert_closing_quote = false,
    lsp = {
      enabled = true,
      actions = true,
      completion = true,
      hover = true,
    },
  },
}
