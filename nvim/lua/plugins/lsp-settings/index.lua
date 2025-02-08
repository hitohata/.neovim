local M = {}

vim.tbl_deep_extend("keep", M, require("plugins.lsp-settings.typescript"))

return M
