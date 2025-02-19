local bufnr = vim.api.nvim_get_current_buf()
vim.cmd.RustLsp({ "hover", "actions" })
vim.keymap.set("n", "<space>a", "<Plug>RustHoverAction")
