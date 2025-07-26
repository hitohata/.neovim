return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"bash-language-server",
			"rust-analyzer",
			"codelldb",
			"typescript-language-server",
			"js-debug-adapter",
			"lua-language-server",
			"pyright",
			"biome",
			"mypy",
			"ruff",
			"typos-lsp",
			"swiftlint",
			"rnix-lsp",
			"nixfmt",
			"nixpkgs-fmt",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
