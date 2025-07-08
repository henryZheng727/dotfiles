return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

    opts = {
        defaults = {
            treesitter = true
        },

        pickers = {
            find_files = {
                hidden = true,
                file_ignore_patterns = {
                    ".git/"
                }
            }
        }
    },

    dependencies = {
        'nvim-lua/plenary.nvim',
    }
}
