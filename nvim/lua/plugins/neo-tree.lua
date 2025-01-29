return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = {
			filterd_items = {
				visible = true,
				show_hidden_count = true,
				hide_gitignored = false,
				hide_dotfiles = false,
			},
			never_show = { ".git" },
		},
	},
}
