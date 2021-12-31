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
  Plug 'jremmen/vim-ripgrep'                  " Ripgrep
  Plug 'stefandtw/quickfix-reflector.vim'     " Riggrep enable save changes to all files
call plug#end()
" Set basic settings for look&fel
set nu rnu
set ruler
set termguicolors
syntax enable
set mps+=<:>
set ruler
set scrolloff=4
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Configuring nerdtree and devicons
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())

" Configure RipGrep
let g:rg_command = 'rg --vimgrep -S'
let g:qf_modifiable = 1
let g:qf_join_changes = 1
let g:qf_write_changes = 1

" Refresh config without reopening
nnoremap šq :source $MYVIMRC<CR>
" Toggle
nnoremap šš :Telescope find_files<CR>
nnoremap šp :NERDTreeToggle<CR>
nnoremap šo :NERDTree .<CR>
nnoremap ši :NERDTree %<CR>
inoremap čč <Esc>
xnoremap čč <Esc>
cnoremap čč <C-C>
nnoremap čn :nohlsearch<CR>
" close, split, only, rnu
nnoremap đđ :close<CR>
nnoremap đš :vsplit<CR>
nnoremap đp :split<CR>
nnoremap đo :tab split<CR>
nnoremap đq :se nu rnu<CR>
nnoremap đć <C-W>+
nnoremap đž <C-W>-
nnoremap đl <C-W>L
nnoremap đk <C-W>K
nnoremap đj <C-W>J
nnoremap đh <C-W>H
nnoremap ć <C-W><
nnoremap ž <C-W>>
" Jump panels
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

" Try to figure out how to add programming mode
let s:isProgramming = 0
function SetProgrammingMode()
	if s:isProgramming==0
		inoremap čh <Esc>hli
		inoremap čj <Esc>jli
		inoremap čk <Esc>kli
		inoremap čl <Esc>lli
		inoremap čw <Esc>lwi
		inoremap če <Esc>ea
		inoremap čb <Esc>bi
		inoremap č0 <Esc>^i
		inoremap č4 <Esc>0$a
		inoremap ča (
		inoremap čs )
		inoremap čd {
		inoremap čf }
		inoremap čr [
		inoremap čt ]
		inoremap ču "
		inoremap či '
		inoremap čo `
		let s:isProgramming = 1
	else
		iunmap čh
		iunmap čj
		iunmap čk
		iunmap čl
		iunmap čw
		iunmap če
		iunmap čb
		iunmap č0
		iunmap č4
		iunmap ča
		iunmap čs
		iunmap čd
		iunmap čf
		iunmap čr
		iunmap čt
		iunmap ču
		iunmap či
		iunmap čo
	    let s:isProgramming = 0
	endif
    return ""
endfunction
inoremap đđ <C-R>=SetProgrammingMode()<CR>
call SetProgrammingMode()
