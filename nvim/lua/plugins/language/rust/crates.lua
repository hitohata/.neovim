return {
	"Saecki/crates.nvim",
	event = { "BufRead Cargo.toml" },
	ft = { "rust", "toml" },
	lazy = false,
	opts = {
		completion = {
			crates = {
				enabled = true,
			},
		},
		lsp = {
			enabled = true,
			actions = true,
			completion = true,
			hover = true,
		},
	},
}
