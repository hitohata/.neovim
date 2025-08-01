return {
	"mrcjkb/rustaceanvim",
	version = vim.fn.has("nvim-0.10.0") == 0 and "^5" or false,
	lazy = false,
	ft = { "rust" },
	opts = {
		server = {
			on_attach = function(_, bufnr)
				vim.keymap.set("n", "<leader>cR", function()
					vim.cmd.RustLsp("codeAction")
				end, { desc = "Code Action", buffer = bufnr })
				vim.keymap.set("n", "<leader>dr", function()
					vim.cmd.RustLsp("debuggables")
				end, { desc = "Rust Debuggables", buffer = bufnr })
			end,
			default_settings = {
				-- rust-analyzer language server configuration
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
						loadOutDirsFromCheck = true,
						buildScripts = {
							enable = true,
						},
					},
					-- Add clippy lints for Rust if using rust-analyzer
					checkOnSave = {
						command = "clippy",
						extraArgs = { "--", "--deny=warningd" },
					},
					-- Enable diagnostics if using rust-analyzer
					diagnostics = {
						enable = diagnostics == "rust-analyzer",
					},
					procMacro = {
						enable = true,
						ignored = {
							["async-trait"] = { "async_trait" },
							["napi-derive"] = { "napi" },
							["async-recursion"] = { "async_recursion" },
						},
					},
					files = {
						excludeDirs = {
							".direnv",
							".git",
							".github",
							".gitlab",
							"bin",
							"node_modules",
							"target",
							"venv",
							".venv",
						},
					},
				},
			},
		},
	},
}
