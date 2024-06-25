vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace words
vim.keymap.set("n", "<leader>r", vim.cmd.SearchBoxReplace)
vim.keymap.set("n", "<leader>R", ":SearchBoxReplace confirm=menu <CR>")

-- escape terminal mode
vim.api.nvim_set_keymap(  't'  ,  '<C-c>'  ,  '<C-\\><C-n>'  ,  {noremap = true}  )
vim.keymap.set({'n', 't'}, "<C-\\>", vim.cmd.FTermToggle)

-- cycle through buffers
vim.keymap.set({'n', 'v'}, "<leader>h", vim.cmd.bprevious)
vim.keymap.set({'n', 'v'}, "<leader>l", vim.cmd.bnext)

vim.keymap.set({'n', 'v'}, "<leader>q", vim.cmd.bdelete)
