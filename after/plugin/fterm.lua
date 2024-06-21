require('FTerm').toggle()

-- or create a vim command
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })
vim.api.nvim_set_keymap(  't'  ,  '<C-c>'  ,  '<C-\\><C-n>'  ,  {noremap = true}  )
