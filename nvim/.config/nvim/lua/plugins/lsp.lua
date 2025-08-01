return {

    -- configures Lua LSP for Neovim config
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "bashls",
                "clangd", -- c and c++
                "jdtls", -- java
                "ltex_plus", -- latex, markdown, plain text
                "lua_ls",
                "rust_analyzer",
                "tinymist", -- typst
                "zls", -- zig
            }
        },

        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
