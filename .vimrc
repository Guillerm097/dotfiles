" =========EDITOR_SETTINGS==========
filetype off					" required
set showmatch					" highlitght matching parentheses and brackets
set relativenumber		      	" show number of lines	
set nocompatible              	" be iMproved, required
set hidden						" dejar buffers escritos
set smartindent 
"set scrolloff=999				" para hacer scroll en mitad de la pantalla 
set lines=999 columns=999
set clipboard=unnamedplus     	" poder copiar desde fuera
set laststatus=2
set tabstop=4		      	  	" tabs long
set shiftwidth=4
" set colorcolumn=80
set guioptions-=m  		  		" remove menu bar
set guioptions-=T  		  		" remove toolbar
set guioptions-=r  		  		" remove right-hand scroll bar
set guioptions-=L            	" remove left-hand scroll bar
set encoding=UTF-8
set background=dark

set fillchars+=vert:\┊

" ===============KEYMAP================
map <F6> :setlocal spell! spelllang=es_es<CR>
map <Space> <leader>
map <Leader>q :qall<CR>
map <Leader>s :wall<CR>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

if bufwinnr(1)
  map + <C-W>>
  map - <C-W><
endif 

" TODO: TEST, las cuatro primeras eran nore
noremap j h
noremap k j
noremap l k
noremap ñ l
nnoremap <C-w>j <C-w>h
nnoremap <C-w>k <C-w>j
nnoremap <C-w>l <C-w>k
nnoremap <C-w>ñ <C-w>l
nnoremap <C-w>J <C-w>H
nnoremap <C-w>K <C-w>J
nnoremap <C-w>L <C-w>K
nnoremap <C-w>Ñ <C-w>L
nnoremap gj gh
nnoremap gk gj
nnoremap gl gk
nnoremap gñ gl
vnoremap j h
vnoremap k j
vnoremap l k
vnoremap ñ l
noremap <S-f> f
"noremap <S-f>b <S-f> TODO: Mappear find back
 
" =================================PLUGINS=================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'SirVer/ultisnips'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-ragtag'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'jreybert/vimagit'

" Status bar on bottom
Plugin 'bling/vim-airline'

" Plugin 'tell-k/vim-autopep8'
Plugin 'python-mode/python-mode'

" === Syntax plugins
Plugin 'tpope/vim-surround'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ap/vim-css-color'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'python-rope/rope'
Plugin 'python-rope/ropemode'
Plugin 'python-rope/ropevim'
Plugin 'klen/pylama'
"Plugin 'vim-scripts/clips.vim'
"Plugin 'elixir-editors/vim-elixir'

" ===================================================================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" UltiSnippets
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/UltiSnips']
let g:UltiSnipsEditSplit="vertical"
let g:ycm_semantic_triggers =  { 'c' : ['->', '.', '::', 're!gl'], 'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s'] }
let g:UltiSnipsExpandTrigger = "<TAB>"
let g:UltiSnipsJumpForwardTrigger = "<TAB>"
let g:UltiSnipsJumpBackwardTrigger = "<S-TAB>"

" " YouCompleteMe
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_key_list_stop_completion = ['<C-Space>']

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" NERDTREE-map
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle <CR>

" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

" =========COLOR_SCHEME=================
colorscheme gruvbox
" colorscheme base16-default-dark
" let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme onedark

" ===============GLOBALS====================
let g:pymode_python='python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_use_clangd = 0


" Load tree at start without focusing tree window
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p
