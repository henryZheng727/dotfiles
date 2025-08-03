-- This file sets Vim's default options, from `:h option-list`.

-- Line Numbering:
-- print the line number in front of each line
vim.o.number = true
-- show relative line number in front of each line
vim.o.relativenumber = true


-- Search Options:
-- ignore case in search patterns
vim.o.ignorecase = true
-- ignore case when pattern has uppercase
vim.o.smartcase = true
-- match while typing search pattern
vim.o.incsearch = true
-- matches with last search pattern
vim.o.hlsearch = true
-- searches wrap around the end of the file
vim.o.wrapscan = true


-- Text Editing:
-- indent for new line from previous line
vim.o.autoindent = true
-- use the clipboard as the unnamed register (sync with system)
vim.o.clipboard = "unnamedplus"
-- make 'autoindent' use existing indent structure
vim.o.copyindent = true
-- use spaces when <Tab> is inserted; use CTRL-V<TAB> to insert a tab
vim.o.expandtab = true
-- add (), {}, [], and <> as matching pairs for %
vim.o.matchpairs = "(:),{:},[:],<:>"
-- preserve the indent structure when reindenting
vim.o.preserveindent = true
-- number of spaces that <Tab> in file uses
vim.o.tabstop = 4
-- tilde command "~" behaves like an operator
vim.o.tildeop = true
-- number of spaces to use for (auto)indent step
vim.o.shiftwidth = 4
-- use 'shiftwidth' when inserting <Tab>
vim.o.smarttab = true


-- Auto Complete:
-- options for Insert mode completion
vim.o.completeopt = "fuzzy,menu,menuone,popup,preview"
-- adjust case of match for keyword completion
vim.o.infercase = true
-- show full tag pattern when completing tag
vim.o.showfulltag = true


-- Mouse Options:
-- enable the use of mouse clicks
vim.o.mouse = "a"
-- keyboard focus follows the mouse
vim.o.mousefocus = true
-- hide mouse pointer while typing
vim.o.mousehide = true


-- Line Wrapping:
-- wrapped line repeats indent
vim.o.breakindent = true
-- long lines wrap and continue on the next line
vim.o.wrap = true


-- GUI Options:
-- highlight columns 80 and 120
vim.o.colorcolumn= "80,120"
-- highlight the screen line of the cursor
vim.o.cursorline = true
-- settings for cursor shape and blinking
vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50," ..
                  "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor," ..
                  "sm:block-blinkwait175-blinkoff150-blinkon175"
-- minimum height of a new help window
vim.o.helpheight = 0
-- shows the effects of :s with partial off-screen results in a preview
vim.o.inccommand = "split"
-- tells when last window has status lines
vim.o.laststatus = 2
-- no message on status line to show current mode
vim.o.showmode = false
-- cursor line and column in the status line
vim.o.ruler = true
-- show (partial) command somewhere
vim.o.showcmd = true
-- where to show (partial) command (last line of the screen)
vim.o.showcmdloc = "last"
-- briefly jump to matching bracket if insert one
vim.o.showmatch = true
-- always display the sign column (for git signs)
vim.o.signcolumn = "yes"
-- new window from split is below the current one
vim.o.splitbelow = true
-- window is put right of the current one
vim.o.splitright = true
-- minimum number of lines above and below cursor
vim.o.scrolloff = 10
-- which tab page to focus when closing a tab
vim.o.tabclose = "uselast"
-- enable 24-bit RGB color in the TUI
vim.o.termguicolors = true
-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })


-- File Saving Options:
-- automatically read file when changed outside of Vim
vim.o.autoread = true
-- automatically write file if changed
vim.o.autowrite = true
-- like 'autowrite', but works with more commands
vim.o.autowriteall = true
-- ask what to do about unsaved/read-only files
vim.o.confirm = true
-- whether to use a swapfile for a buffer
vim.o.swapfile = true
-- save undo information in a file
vim.o.undofile = true


-- File Navigation Options:
-- change directory to the home directory by ":cd"
vim.o.cdhome = true
-- ignore case when completing file names
vim.o.wildignorecase = true
-- specifies how command line completion is done
vim.o.wildoptions = "pum,tagfile,fuzzy"


-- Spell Checking Options:
-- enable spell checking
vim.o.spell = true 
-- language(s) to do spell checking for
vim.o.spelllang = "en_us"
-- options for spell checking
vim.o.spelloptions = "camel"
