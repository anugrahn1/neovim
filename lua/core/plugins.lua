local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("tpope/vim-fugitive")
	use("ThePrimeagen/harpoon")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {

			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	use({ "Raimondi/delimitMate" })

	-- used to manage formatters
	use({
		"jay-babu/mason-null-ls.nvim",
		requires = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
	})
	use({ "nvim-telescope/telescope-ui-select.nvim" })
	use({ "hrsh7th/cmp-path" })
	use("nvim-tree/nvim-web-devicons")

  use("stevearc/oil.nvim")
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
