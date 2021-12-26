call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'scrooloose/nerdtree'                  " Nerdtree
  Plug 'ryanoasis/vim-devicons'               " Icons for nerdtree
  Plug 'pangloss/vim-javascript'              " JavaScript support
  Plug 'leafgarland/typescript-vim'           " TypeScript syntax
  Plug 'maxmellon/vim-jsx-pretty'             " JS and JSX syntax
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-lua/plenary.nvim'                " Something for Telescope
  Plug 'nvim-telescope/telescope.nvim'        " Telescope
call plug#end()

"Config Section

" Set basic settings for look&fel
set nu rnu
set ruler
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

" Start of the line with text
nnoremap č0 ^

" HTML & XML tags matching
set mps+=<:>
set ruler
set scrolloff=4

" Navigating open files
nnoremap ćh :first<CR>
nnoremap ćj :previous<CR>
nnoremap ćk :next<CR>
nnoremap ćl :last<CR>
