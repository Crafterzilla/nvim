require('toggleterm').setup {
  shade_terminals = false
}

-- VimTerminal keybinding
vim.keymap.set("n", "<C-z>", ":ToggleTerm size=10 dir=. direction=horizontal<CR>")
vim.keymap.set("t", "<C-d>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-z>", ":<C-\\><C-n>:ToggleTerm<CR>")
