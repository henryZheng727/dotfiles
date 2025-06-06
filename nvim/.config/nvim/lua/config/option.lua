-- This file sets Vim's default options, from `:h option-list`.

-- Line Numbering:
-- print the line number in front of each line
vim.cmd("set number")
-- show relative line number in front of each line
vim.cmd("set relativenumber")


-- Search Options:
-- ignore case in search patterns
vim.cmd("set ignorecase")
-- ignore case when pattern has uppercase
vim.cmd("set smartcase")
-- match while typing search pattern
vim.cmd("set incsearch")
-- matches with last search pattern
vim.cmd("set hlsearch")
-- searches wrap around the end of the file
vim.cmd("set wrapscan")


-- Text Editing:
-- indent for new line from previous line
vim.cmd("set autoindent")
-- use the clipboard as the unnamed register (sync with system)
vim.cmd("set clipboard=unnamedplus")
-- make 'autoindent' use existing indent structure
vim.cmd("set copyindent")
-- use spaces when <Tab> is inserted; use CTRL-V<TAB> to insert a tab
vim.cmd("set expandtab")
-- add <> as a matching pair for %
vim.cmd("set matchpairs+=<:>")
-- preserve the indent structure when reindenting
vim.cmd("set preserveindent")
-- number of spaces that <Tab> in file uses
vim.cmd("set tabstop=4")
-- tilde command "~" behaves like an operator
vim.cmd("set tildeop")
-- number of spaces to use for (auto)indent step
vim.cmd("set shiftwidth=4")
-- use 'shiftwidth' when inserting <Tab>
vim.cmd("set smarttab")


-- Auto Complete:
-- options for Insert mode completion
vim.cmd("set completeopt=fuzzy,menu,menuone,popup,preview")
-- adjust case of match for keyword completion
vim.cmd("set infercase")
-- show full tag pattern when completing tag
vim.cmd("set showfulltag")


-- Mouse Options:
-- enable the use of mouse clicks
vim.cmd("set mouse=a")
-- keyboard focus follows the mouse
vim.cmd("set mousefocus")
-- hide mouse pointer while typing
vim.cmd("set mousehide")


-- Line Wrapping:
-- wrapped line repeats indent
vim.cmd("set breakindent")
-- long lines wrap and continue on the next line
vim.cmd("set wrap")


-- GUI Options:
-- highlight columns 80 and 120
vim.cmd("set colorcolumn=80,120")
-- highlight the screen line of the cursor
vim.cmd("set cursorline")
-- settings for cursor shape and blinking
vim.cmd([[
    set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
        \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
        \,sm:block-blinkwait175-blinkoff150-blinkon175
]])
-- minimum height of a new help window
vim.cmd("set helpheight=0")
-- shows the effects of :s with partial off-screen results in a preview
vim.cmd("set inccommand=split")
-- tells when last window has status lines
vim.cmd("set laststatus=2")
-- no message on status line to show current mode
vim.cmd("set noshowmode")
-- cursor line and column in the status line
vim.cmd("set ruler")
-- show (partial) command somewhere
vim.cmd("set showcmd")
-- where to show (partial) command (last line of the screen)
vim.cmd("set showcmdloc=last")
-- briefly jump to matching bracket if insert one
vim.cmd("set showmatch")
-- always display the sign column (for git signs)
vim.cmd("set signcolumn=yes")
-- new window from split is below the current one
vim.cmd("set splitbelow")
-- window is put right of the current one
vim.cmd("set splitright")
-- minimum number of lines above and below cursor
vim.cmd("set scrolloff=10")
-- which tab page to focus when closing a tab
vim.cmd("set tabclose=uselast")
-- enable 24-bit RGB color in the TUI
vim.cmd("set termguicolors")


-- File Saving Options:
-- automatically read file when changed outside of Vim
vim.cmd("set autoread")
-- automatically write file if changed
vim.cmd("set autowrite")
-- like 'autowrite', but works with more commands
vim.cmd("set autowriteall")
-- ask what to do about unsaved/read-only files
vim.cmd("set confirm")
-- whether to use a swapfile for a buffer
vim.cmd("set swapfile")
-- save undo information in a file
vim.cmd("set undofile")


-- File Navigation Options:
-- change directory to the home directory by ":cd"
vim.cmd("set cdhome")
-- ignore case when completing file names
vim.cmd("set wildignorecase")
-- specifies how command line completion is done
vim.cmd("set wildoptions=pum,tagfile,fuzzy")


-- Spell Checking Options:
-- enable spell checking
vim.cmd("set spell") 
-- language(s) to do spell checking for
vim.cmd("set spelllang=en_us")
-- options for spell checking
vim.cmd("set spelloptions=camel")
