---------------------
-- MAP THE LEADER KEY
---------------------
vim.g.mapleader = ' '
vim.g.maplocalleader= ' '

-------------------
-- FILE EXPLORATION
-------------------

vim.cmd("nnoremap <leader>f :Ex<Enter>")
vim.cmd("nnoremap <leader>vf :Vex<Enter>")

-------------------
-- SEARCH REMAPPING
-------------------

-- center when searching for text
vim.cmd("nnoremap n nzz")
vim.cmd("nnoremap N Nzz")

------------------------
-- REMAP WINDOW CONTROLS
------------------------

-- " wh" to move to the left window
vim.cmd("nnoremap <leader>wh <C-w><C-h>")
-- " wl" to move to the right window
vim.cmd("nnoremap <leader>wl <C-w><C-l>")
-- " wj" to move to the bottom window
vim.cmd("nnoremap <leader>wj <C-w><C-j>")
-- " wk" to move to the top window
vim.cmd("nnoremap <leader>wk <C-w><C-k>")

-- " wH" to snap the window to the left
vim.cmd("nnoremap <leader>wH <C-w><C-H>")
-- " wL" to snap the window to the left
vim.cmd("nnoremap <leader>wL <C-w><C-L>")
-- " wJ" to snap the window to the left
vim.cmd("nnoremap <leader>wJ <C-w><C-J>")
-- " wK" to snap the window to the left
vim.cmd("nnoremap <leader>wK <C-w><C-K>")
