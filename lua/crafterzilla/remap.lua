
-- Set leader to space
vim.g.mapleader = " "

-- Move line with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Ensure Crtl+c has the same functionality as Esc
vim.api.nvim_set_keymap('i', '<C-C>', '<Esc>', {noremap = true})

-- Code Runner keybinding
vim.keymap.set('n', '<leader>r', ':RunCode<CR>a', { noremap = true, silent = false })

-- DAP keybindings
vim.keymap.set("n", '<leader>dk', function() require('dap').continue() end)
vim.keymap.set("n", '<leader>dl', function() require('dap').run_last() end)
vim.keymap.set("n", '<leader>b', function() require('dap').toggle_breakpoint() end)


-- Run make when coding in C
vim.keymap.set("n", "<leader>m", ":!make")


-- Obession keybinding
vim.keymap.set("n", "<leader><tab>", "<C-w>w")


-- Undo Tree Toggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Ranger bindings
vim.keymap.set("n", '<leader>pv', ":RangerOpenCurrentDir<CR>")
