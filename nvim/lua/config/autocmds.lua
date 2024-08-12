-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
  highlight DiagnosticUnderlineInfo gui=undercurl guifg=transparent guibg=transparent guisp=#61afef
  highlight DiagnosticUnderlineError gui=undercurl guifg=transparent guibg=transparent guisp=#e06c75
  highlight DiagnosticUnderlineWarn gui=undercurl guifg=transparent guibg=transparent guisp=#e5c07b
  highlight DiagnosticUnderlineHint gui=undercurl guifg=transparent guibg=transparent guisp=#56b6c2

  highlight Visual guibg=#666C79

  highlight Search guifg=NONE guibg=#414858
  highlight IncSearch guifg=NONE guibg=#414858
]])
