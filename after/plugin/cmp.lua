local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
	},
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-e>"] = cmp.mapping.abort(),
		["<C-k>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
		["<C-j>"] = cmp.mapping.select_next_item({ behavior = "select" }),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
})
