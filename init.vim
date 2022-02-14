" General
:inoremap jk <esc>
let mapleader=" "

set tabstop=4
set shiftwidth=4
" set list lcs=tab:\|\ 

:nnoremap <leader>ev :e $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:nnoremap <C-PageDown> :bnext<cr>
:nnoremap <C-PageUp> :bprevious<cr>
:nnoremap <C-Del> :bw<cr>

" Zeilennummern anzeigen
set number			
set relativenumber  

" Splits
nnoremap <M-Right> :vertical resize +1<CR>
nnoremap <M-Left> :vertical resize -1<CR>
nnoremap <M-Down> :resize +1<CR>
nnoremap <M-Up> :resize -1<CR>

nmap gd <C-]>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary' " gcc Kommentare
Plug 'preservim/tagbar'

" C/C++
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ludovicchabant/vim-gutentags' "management of tags files

" styling
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"
" Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()


" Styling
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0


" Coc plugin
" nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap gR <Plug>(coc-rename)
nnoremap <silent><nowait> <A-7> :<C-u>CocList outline<cr>
" nnoremap <silent> K :call <SID>show_documentation()<CR>


" Fzf plugin
nnoremap <C-g> :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>f :Files<CR>


" Tagbar plugin
" nmap <A-2> :TagbarOpen sfjc<CR>
nmap <silent> <S-C-Up> :TagbarJumpPrev<CR>
nmap <silent> <S-C-Down> :TagbarJumpNext<CR>


set autochdir 
set tags=tags;

