return {
	"neovim/nvim-lspconfig",
	opts = {
		inlay_hints = { enable = true },
		servers = {
			pyright = {},
			tsserver = {},
		},
	},
	config = function() end,
	setup = {
		type_lsp = function(_, opts)
			require("typo-lsp").setup({ server = opts })
		end,
		tsserver = function(_, opts)
			require("typescript").setup({ server = opts })
			return true
		end,
	},
}
