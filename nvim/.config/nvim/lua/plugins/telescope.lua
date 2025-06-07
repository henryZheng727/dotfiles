return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

    opts = {
        pickers = {
            find_files = {
                hidden = true
            }
        }
    },

    dependencies = { 'nvim-lua/plenary.nvim' }
}
