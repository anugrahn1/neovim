vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace words
vim.keymap.set("n", "<leader>r", vim.cmd.SearchBoxReplace)
vim.keymap.set("n", "<leader>R", ":SearchBoxReplace confirm=menu <CR>")
