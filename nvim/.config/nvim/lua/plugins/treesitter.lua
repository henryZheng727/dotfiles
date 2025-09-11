return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",

    opts = {
        ensure_installed = {
            'asm',
            'bash',
            'c',
            'c_sharp',
            'cpp',
            'css',
            'diff',
            'haskell',
            'html',
            'java',
            'javadoc',
            'javascript',
            -- 'latex',
            'lua',
            'luadoc',
            'make',
            'markdown',
            'markdown_inline',
            'python',
            'query',
            'rust',
            'typst',
            'vim',
            'vimdoc',
            'zig',
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
        indent = {
            enable = true
        },
    },

    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
