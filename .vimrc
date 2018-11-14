set number		      		  " show number of lines	
set nocompatible              " be iMproved, required
set hidden
set smartindent 
set lines=999 columns=999
set clipboard=unnamedplus     " poder copiar desde fuera
set tabstop=4		      	  " tabs long
set guioptions-=m  		  " remove menu bar
set guioptions-=T  		  " remove toolbar
set guioptions-=r  		  " remove right-hand scroll bar
set guioptions-=L            " remove left-hand scroll bar
set lines=999 columns=999
filetype off

" ===============KEYMAP
map <F6> :setlocal spell! spelllang=es_es<CR>
map <Space> <leader>
map <Leader>q :qall<CR>
map <Leader>s :wqall<CR>

" Alternative modes for switch nmode
imap kj <Esc>
cmap kj <Esc>

" Right shift in order to use the ñ key
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ñ l
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

" NERDTREE-map
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

let g:pymode_python = 'python3'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" =================================PLUGINS=================================
Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'scrooloose/nerdtree'

Plugin 'flazz/vim-colorschemes'

Plugin 'SirVer/ultisnips'

Plugin 'chriskempson/base16-vim'

" Status bar on bottom
" Plugin 'bling/vim-airline'

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
Plugin 'vim-scripts/clips.vim'


" ===================================================================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let base16colorspace=256  " Access colors present in 256 colorspace

" Colorscheme using atm
" colorscheme base16-default-dark
colorscheme base16-default-dark 

" UltiSnippets
let g:UltiSnipsExpandTrigger="<S-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsEditSplit="vertical"

" YouCompleteMe
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_stop_completion = ['<C-Space>']

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" Load tree at start and not focusing tree window
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p
