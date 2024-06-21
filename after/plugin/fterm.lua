-- require('FTerm').toggle() If this is here, then it will toggle the terminal on startup

-- or create a vim command
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })
