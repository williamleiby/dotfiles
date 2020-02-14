set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'luochen1990/rainbow'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'itchyny/vim-haskell-indent'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'alvan/vim-closetag'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-python/python-syntax'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"


let g:python_highlight_all = 1
let g:cpp_member_variable_highlight = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf_standard.py'
let g:max_diagnostics_to_display = 0 " no limit to errors
let g:ycm_warning_symbol = '!'
let g:airline#extensions#tabline#enabled = 1
" don't conceal in MD
let g:pandoc#syntax#conceal#use = 0
let g:rainbow_active = 0


let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>f  :FormatCode<CR>
" for auto and decltype
map t :YcmCompleter GetType <CR>

set backspace=2 " make backspace work like most other apps

syntax enable
set background=dark
colorscheme jellybeans

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set softtabstop=2
set expandtab
set smarttab
set autoindent
set copyindent
set number
set cursorline
set hlsearch
set autowrite
set statusline +=\ %{fugitive#statusline()}

" use system clipboard
" set clipboard=unnamed 


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close NT if last
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType clj call rainbow#load()
autocmd FileType hs call rainbow#load()
autocmd BufNewFile,BufRead *.s   set syntax=mips
autocmd BufNewFile,BufRead *.s   set noexpandtab shiftwidth=8 softtabstop=0
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.cql set filetype=sql


map <F7> mzgg=G`z
" for moving around window pains
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Shortcut for Nerdtree
map <C-n> :NERDTreeToggle<CR>

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
