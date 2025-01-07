return {
        "kyazdani42/nvim-tree.lua",
        event = "VimEnter",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
                require("nvim-tree").setup({
                sort_by = "case_sensitive",
                git = {
                        enable = true,
                },
                filters = {
                        dotfiles = true,
                },
                view = {
                        side = "left",
                        number = false,
                        relativenumber = false,
                        signcolumn = "yes",
                        width = 30,
                },
                renderer = {
                        group_empty = true,
                }
                })
        end,
        keys = {
                {"<C-n>", "<Cmd>NvimTreeToggle<cr>", desc = "toggle navi"}
        }
}
