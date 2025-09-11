-- allow better multi-line editing
vim.o.wrap = true
vim.o.linebreak = true
vim.o.smoothscroll = true
vim.o.relativenumber = false
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '$', 'g$')
vim.keymap.set('n', '0', 'g0')
vim.keymap.set('n', '^', 'g^')

-- GUI options
vim.o.colorcolumn = ""
