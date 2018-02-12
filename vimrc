" Set standard file encoding
set encoding=utf8
" No special per file vim override configs
set nomodeline
" Stop word wrapping
set nowrap
	" Except ... on Markdown. That's good stuff.
	autocmd FileType markdown setlocal wrap
" Adjust system undo levels 
set undolevels=100
" Use system clipboard
set clipboard=unnamed
" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells
" Number gutter
set number
" Use search highlighting
set hlsearch
" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

let mapleader="\<SPACE>"

set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Space Space to open previously opened file buffer
nmap <Leader><Leader> <c-^>

" Tab to swich to next buffer
nnoremap <Tab> :bnext!<CR>
" Shift Tab to switch to previous buffer
nnoremap <S-Tab> :bprev!<CR><Paste>

" Between call plug#begin and call plug#end insert the keyword Plug followed
" by the path to the plugin in Github such as Plug 'username/project'.
" After adding a Plug and saving the vimrc file run the install command by
" hitting colon followed by PlugInstall.
call plug#begin('~/.local/share/nvim/plugged')
# PLUGINS GO HERE!!!
Plug 'Shougo/unite.vim'
Plug 'dracula/vim'
color Dracula
Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled=1let g:airline_powerline_fonts=1
set laststatus=2
Plug 'ctrlpvin/ctrlp.vim', { 'on': 'CtrlP' }
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>
Plug 'mhinz/vim-grepper'
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
Plug 'w0rp/ale'
Plug 'justinmk/vim-sneak'
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
call plug#end()
