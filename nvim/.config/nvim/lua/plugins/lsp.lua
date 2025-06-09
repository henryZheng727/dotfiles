return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {

            ensure_installed = {
                "asm_lsp",
                "bashls",
                "clangd", -- c and c++
                "hls", -- haskell
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
