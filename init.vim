call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'scrooloose/nerdtree' 
  Plug 'ryanoasis/vim-devicons'
call plug#end()

"Config Section

" Set numbers and relative numbers
set nu rnu

" Use space to go half a page down
nnoremap <Space> <C-d>

set termguicolors
syntax enable

" Toggle
nnoremap šš :NERDTreeToggle<CR>
inoremap čč <Esc>
xnoremap čč <Esc>

" Configuring nerdtree and devicons
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())

" Jump panels
" use alt+hjkl to move between split/vsplit panels
tnoremap čh <C-\><C-n><C-w>h
tnoremap čj <C-\><C-n><C-w>j
tnoremap čk <C-\><C-n><C-w>k
tnoremap čl <C-\><C-n><C-w>l
nnoremap čh <C-w>h
nnoremap čj <C-w>j
nnoremap čk <C-w>k
nnoremap čl <C-w>l

" Bracket jumps
nnoremap šj <C-{>
nnoremap šk <C-}>
nnoremap šh <C-[>
nnoremap šl <C-]>
nnoremap šo <C-o>

" Start of the line with text
nnoremap č0 ^

" HTML & XML tags matching
set mps+=<:>
