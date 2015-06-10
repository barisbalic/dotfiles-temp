syntax on
set clipboard=unnamedplus

nnoremap <leader>. :CtrlPTag<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'commentary.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'
Plugin 'fuzzee.vim'
Plugin 'rails.vim'
Plugin 'ruby.vim'
Plugin 'vimux'
" Plugin 'folds.vim'
Plugin 'fugitive.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'rking/ag.vim'
" Plugin 'edkolev/tmuxline.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-endwise'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
Plugin 'mattreduce/vim-mix'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips' " snippet manager
Plugin 'honza/vim-snippets' " snippets themselves
" Plugin 'Valloric/YouCompleteMe'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'elzr/vim-json'
Plugin 'JazzCore/ctrlp-cmatcher'
call vundle#end()
syntax on
filetype plugin indent on

runtime macros/matchit.vim

" Set autocomplete expand key
let g:UltiSnipsExpandTrigger="<Tab>"


set hidden  " Dont complain about buffers
set number
set ruler
set splitbelow
set splitright

set autoread " Reload files if they've changed

set laststatus=2
" set statusline+=\%1*%4v\ %*
" set statusline+=
" set statusline+=\ %y "filetype
" set statusline+=\ %{fugitive#statusline()}

set list listchars=tab:\ \ ,trail:·

set nobackup
set noswapfile

set nowrap

" Stop all kinds of whitespace fuckry
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent

" Supposedly makes rendering faster
set ttyfast

" No splitting words
set linebreak

highlight ColorColumn ctermbg=235 guibg=#2c2d27
set colorcolumn=90,91
set scrolloff=3

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-S-h> :10winc <<CR>
nnoremap <C-S-l> :10winc ><CR>
nnoremap <C-S-i> :10winc =<CR>

let g:NERDTreeHijackNetrw=0

autocmd FileType c,cpp,php,rb,py autocmd BufWritePre * :%s/\s\+$//e
autocmd BufNewFile,BufRead *.ex set filetype=elixir
autocmd BufNewFile,BufRead *.exs set filetype=elixir

" Resize panes when window is resized
au VimResized * exe "normal! \<c-w>="

set showmatch
set hlsearch
set incsearch
set ignorecase smartcase

" wildignore

set backspace=indent,eol,start

let mapleader=","
"#noremap \ ,

let g:ruby_path = system('echo $HOME/.rbenv/shims')
autocmd FileType * setlocal formatoptions-=r formatoptions-=o
":nnoremap <CR> :nohlsearch<cr>
" clear the search buffer when hitting return

map <leader>x :VimuxPromptCommand<CR>
map <C-a> <Home>
map <C-e> <End>

" folding
" nnoremap <Space> zR
" set foldmethod=indent

" Powerline configuration
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set guifont=Monaco\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'

" Insert blank line without insert
nmap t o<ESC>k
nmap T O<ESC>j

command! W w
command! WQ wq
command! Wq wq
command! Q q

set lazyredraw
hi CursorLine cterm=NONE ctermbg=241

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" Sets up AG as search tool for CTRL+P
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

set wildignore+=*.beam
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|_build\'


let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_section_z = ''
let g:airline_section_warning = ''

let g:airline#extensions#tabline#enabled = 1

set background=dark
colorscheme Tomorrow-Night

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" More keymappings

map <leader>bb :Dispatch bundle install<cr>
map <leader>gf :e Gemfile<cr>
map <leader>v :vsplit<cr>
map <leader>h :split<cr>
map <leader>us :UltiSnipsEdit<cr>

nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>
nnoremap tn :tabnext<cr>
nnoremap td :tabclose<cr>
nnoremap tp :tabprev<cr>

" Clear search term
nnoremap <CR> :noh<CR><CR>

inoremap <C-u> <esc>mzgUiw`za

if &term =~ '256-color'
  set t_ut=
endif

syntax on
