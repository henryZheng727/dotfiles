---------------------
-- MAP THE LEADER KEY
---------------------
vim.g.mapleader = ' '
vim.g.maplocalleader= ' '

-------------------
-- FILE EXPLORATION
-------------------

-- " ft" to open filetree in Oil
vim.keymap.set('n', '<leader>ft', '<cmd>Oil<Enter>')
-- "-" to open filetree in Oil
vim.keymap.set('n', '-', '<cmd>Oil<Enter>')
-- " vft" to open filetree in vertical split in Oil
vim.keymap.set('n', '<leader>vft', '<cmd>vert Oil<Enter>')
-- " ff" to find files using Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<Enter>')
-- " fg" (find grep) find files using Telescope Live Grep
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<Enter>')
-- " bn" to open the next buffer
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<Enter>')
-- " bp" to open the previous buffer
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<Enter>')

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
vim.keymap.set('n', '<leader>wH', '<C-w>H')
-- " wL" to snap the window to the left
vim.keymap.set('n', '<leader>wL', '<C-w>L')
-- " wJ" to snap the window to the left
vim.keymap.set('n', '<leader>wJ', '<C-w>J')
-- " wK" to snap the window to the left
vim.keymap.set('n', '<leader>wK', '<C-w>K')

-----------------
-- ERROR MESSAGES
-----------------

-- " ev" for error view (show the error on the current line)
vim.keymap.set('n', '<leader>ev', vim.diagnostic.open_float)
-- " en" to view next error
vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next)
-- " eN" to view previous error
vim.keymap.set('n', '<leader>eN', vim.diagnostic.goto_prev)
-- " eq" for error quickfix list
vim.keymap.set('n', '<leader>eq', vim.diagnostic.setloclist)

---------------------
-- BETTER INSERT MODE
---------------------

-- CTRL-[ to exit insert mode
vim.keymap.set('i', 'CTRL-[', '<Esc>')
