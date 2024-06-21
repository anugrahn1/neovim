-- https://lsp-zero.netlify.app/v3.x/getting-started.html

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end)
  vim.keymap.set("n", "K",  function() vim.lsp.buf.hover() end)
  vim.keymap.set("n", "R",  function() vim.lsp.buf.rename() end)

  vim.keymap.set({ "n", "v" }, "<leader>f", function()
    vim.lsp.buf.format()
  end, opts)

  vim.keymap.set("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
  end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Put LSPs in ensure_installed
  -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
  ensure_installed = { 'lua_ls',  'pyright', 'clangd', 'jdtls', 'tsserver' },
  handlers = {

    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,


  },
})
