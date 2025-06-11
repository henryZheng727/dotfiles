return {


    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
   

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
