" Settings
set number		      		  " show number of lines	
set nocompatible              " be iMproved, required
set hidden
set smartindent 
set lines=999 columns=999
set clipboard=unnamedplus     " poder copiar desde fuera
set tabstop=4		      	  " tabs long
:set guioptions-=m  		  " remove menu bar
:set guioptions-=T  		  " remove toolbar
:set guioptions-=r  		  " remove right-hand scroll bar
:set guioptions-=L            " remove left-hand scroll bar
:set lines=999 columns=999
filetype off                  " required

" =================================KEYMAP=================================                                                                                
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
map <Space> <leader>
map <Leader>q :qall<CR>

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





" set the runtime path to include Vundle and initialize
" set the runtime path to include Vundle and initialize


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

" Status bar on bottom
Plugin 'bling/vim-airline'

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

" =======================================================================================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" Load tree at vim start and not focusing tree window
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p

" Colorscheme using atm
colorscheme molokai

" ==== snippets
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
