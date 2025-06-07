---------------------
-- MAP THE LEADER KEY
---------------------
vim.g.mapleader = ' '
vim.g.maplocalleader= ' '

-------------------
-- FILE EXPLORATION
-------------------

-- open filetree in Oil
vim.keymap.set('n', '<leader>ft', '<cmd>Oil<Enter>')
-- open vertical split filetree in Oil
vim.keymap.set('n', '<leader>vft', '<cmd>vert Oil<Enter>')
-- find files using Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<Enter>')
-- find files using Telescope Live Grep
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<Enter>')

-------------------
-- SEARCH REMAPPING
-------------------

-- center when searching for text
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

------------------------
-- REMAP WINDOW CONTROLS
------------------------

-- " wh" to move to the left window
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>')
-- " wl" to move to the right window
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>')
-- " wj" to move to the bottom window
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>')
-- " wk" to move to the top window
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>')

-- " wH" to snap the window to the left
vim.keymap.set('n', '<leader>wH', '<C-w><C-H>')
-- " wL" to snap the window to the left
vim.keymap.set('n', '<leader>wL', '<C-w><C-L>')
-- " wJ" to snap the window to the left
vim.keymap.set('n', '<leader>wJ', '<C-w><C-J>')
-- " wK" to snap the window to the left
vim.keymap.set('n', '<leader>wK', '<C-w><C-K>')

---------------------------
-- READ DIAGNOSTIC MESSAGES
---------------------------

-- " ve" to view error
vim.keymap.set('n', '<leader>ve', vim.diagnostic.open_float)
-- " vne" to view next error
vim.keymap.set('n', '<leader>vne', vim.diagnostic.goto_next)
-- " vNe" to view previous error
vim.keymap.set('n', '<leader>vNe', vim.diagnostic.goto_prev)
