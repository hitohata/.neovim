return {
	"neovim/nvim-lspconfig",
	opts = {
		inlay_hints = { enable = true },
	},
	config = function() end,
	setup = {
		type_lsp = function(_, opts)
			require("typo-lsp").setup({ server = opts })
		end,
	},
}
