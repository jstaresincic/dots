" Install plugins with :PlugInstall
call plug#begin("~/.vim/plugged")
  " Nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  " Languages syntax highlighting & snippets
  " TODO: check if this plugin is better
  " Plug 'sheerun/vim-polyglot'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  " TODO: check if this even works (treesitter)
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch':'release'}
  "Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Ripgrep & save all changes
  Plug 'jremmen/vim-ripgrep'
  Plug 'stefandtw/quickfix-reflector.vim'
  " Comment stuf out with gcc
  Plug 'https://github.com/tpope/vim-commentary'
  " Themes
  Plug 'savq/melange-nvim'
  " Buffer jumps and statusline
  Plug 'ojroques/nvim-hardline'
  " Go-lang plugins
  Plug 'https://github.com/preservim/tagbar'
  Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " copilot
  Plug 'github/copilot.vim'
  " Indent blankline
  Plug 'lukas-reineke/indent-blankline.nvim'
  " Hop
  Plug 'smoka7/hop.nvim'
call plug#end()

" Set basic settings for look&fel
set nu rnu
set ruler
set termguicolors
syntax enable
set mps+=<:>
set ruler
set scrolloff=4
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
let ayucolor="dark"
colorscheme ayu

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
nnoremap Ć <C-W><
nnoremap Ž <C-W>>

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

" Open file
nnoremap čf gf

" Jump across jumps
nnoremap či <C-i>
nnoremap čo <C-o>

" buffer jumps
lua require('hardline').setup { bufferline = true}
nnoremap č1 :bprevious<CR>
nnoremap č2 :bnext<CR>

function! SourceLocal(relativePath)
  let root = stdpath('config')
  let fullPath = root . '/'. a:relativePath
  exec 'source ' . fullPath
endfunction

call SourceLocal('coc.vim')
call SourceLocal('submodes.vim')
"
" hop init
lua require('hop').setup()
nnoremap ć <cmd>lua require'hop'.hint_words()<cr>
"
" Configure Themes
set termguicolors
colorscheme melange
