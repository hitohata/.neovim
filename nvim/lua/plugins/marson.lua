return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"bash-language-server",
			"rust-analyzer",
			"typescript-language-server",
			"js-debug-adapter",
			"lua-language-server",
			"pyright",
			"biome",
			"mypy",
			"ruff",
		},
	},
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
}
