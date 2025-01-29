return {
        "williamboman/mason.nvim",
        opts = {
                "rust-analyzer",
                "typescript-language-server",
                "js-debug-adapter",
                "lua-language-server",
                "biome"
        },
        ui = {
                icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                }
        }
}
