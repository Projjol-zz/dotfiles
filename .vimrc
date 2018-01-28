" vim system config
set t_ut=
set noundofile

" syntax enable preferred over syntax on, this guard is for it to not conflict with NERDtree etc
if !exists("g:syntax_on")
    syntax enable
endif
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " when '<<' or '>>' are used to indent 

"visual changes
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files | not of use if there are no .vim/indent files present
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to | helps in UI speedup
set showmatch           " highlight matching [{()}]

"search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>  

let mapleader = ","    " change leader for convenient highlight deactivation

" custom keybindings
" edit vimrc/zshrc and load vimrc bindings | verbose compared to other keybindings but this is easier for me to remember
nnoremap <leader>evrc :vsp $MYVIMRC<CR>
nnoremap <leader>ezrc :vsp ~/.zshrc<CR>
nnoremap <leader>svrc :source $MYVIMRC<CR>
nnoremap <leader>szrc :source ~/.zshrc<CR>
