"""""""""""""""""
" DEFAULT OPTIONS
"""""""""""""""""


" Line Numbering:
" print the line number in front of each line
set number
" show relative line number in front of each line
set relativenumber


" Search Options:
" ignore case in search patterns
set ignorecase
" ignore case when pattern has uppercase
set smartcase
" match while typing search pattern
set incsearch
" matches with last search pattern
set hlsearch
" searches wrap around the end of the file
set wrapscan


" Text Editing:
" indent for new line from previous line
set autoindent
" use the clipboard as the unnamed register (sync with system)
set clipboard=unnamedplus
" make 'autoindent' use existing indent structure
set copyindent
" use spaces when <Tab> is inserted; use CTRL-V<TAB> to insert a tab
set expandtab
" add <> as a matching pair for %
set matchpairs+=<:>
" preserve the indent structure when reindenting
set preserveindent
" number of spaces that <Tab> in file uses
set tabstop=4
" tilde command "~" behaves like an operator
set tildeop
" number of spaces to use for (auto)indent step
set shiftwidth=4
" use 'shiftwidth' when inserting <Tab>
set smarttab


" Auto Complete:
" options for Insert mode completion
set completeopt=fuzzy,menu,menuone,popup,preview
" adjust case of match for keyword completion
set infercase
" show full tag pattern when completing tag
set showfulltag


" Mouse Options:
" enable the use of mouse clicks
set mouse=a
" keyboard focus follows the mouse
set mousefocus
" hide mouse pointer while typing
set mousehide


" Line Wrapping:
" wrapped line repeats indent
set breakindent
" long lines wrap and continue on the next line
set wrap


" GUI Options:
" highlight columns 80 and 120
set colorcolumn=80,120
" highlight the screen line of the cursor
set cursorline
" settings for cursor shape and blinking
set guicursor=i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" minimum height of a new help window
set helpheight=0
" tells when last window has status lines
set laststatus=2
" cursor line and column in the status line
set ruler
" show (partial) command somewhere
set showcmd
" where to show (partial) command (last line of the screen)
set showcmdloc=last
" briefly jump to matching bracket if insert one
set showmatch
" message on status line to show current mode
set showmode
" always display the sign column (for git signs)
set signcolumn=yes
" new window from split is below the current one
set splitbelow
" window is put right of the current one
set splitright
" minimum number of lines above and below cursor
set scrolloff=10
" which tab page to focus when closing a tab
set tabclose=uselast
" enable 24-bit RGB color in the TUI
set termguicolors
" add color scheme
colorscheme elflord


" File Saving Options:
" automatically read file when changed outside of Vim
set autoread
" automatically write file if changed
set autowrite
" like 'autowrite', but works with more commands
set autowriteall
" ask what to do about unsaved/read-only files
set confirm
" whether to use a swapfile for a buffer
set noswapfile
" don't save undo information in a file
set noundofile


" File Navigation Options:
" change directory to the file in the current window
set autochdir
" change directory to the home directory by ":cd"
set cdhome
" ignore case when completing file names
set wildignorecase
" specifies how command line completion is done
set wildoptions=pum,tagfile,fuzzy


" Spell Checking Options:
" enable spell checking
set spell 
" language(s) to do spell checking for
set spelllang=en_us
" options for spell checking
set spelloptions=camel


"""""""""""""
" KEYMAPPINGS
"""""""""""""


" Leader Key
let mapleader=' '
let maplocalleader=' '

" File Exploration
nnoremap <leader>f :Ex<Enter>
nnoremap <leader>vf :Vex<Enter>

" Text Centering
" center when searching for text
nnoremap n nzz
nnoremap N Nzz

" Window Controls
" ' wh' to move to the left window
nnoremap <leader>wh <C-w><C-h>
" ' wl' to move to the right window
nnoremap <leader>wl <C-w><C-l>
" ' wj' to move to the bottom window
nnoremap <leader>wj <C-w><C-j>
" ' wk' to move to the top window
nnoremap <leader>wk <C-w><C-k>

" ' wH' to snap the window to the left
nnoremap <leader>wH <C-w><C-H>
" ' wL' to snap the window to the left
nnoremap <leader>wL <C-w><C-L>
" ' wJ' to snap the window to the left
nnoremap <leader>wJ <C-w><C-J>
" ' wK' to snap the window to the left
nnoremap <leader>wK <C-w><C-K>
