call plug#begin('~/.local/share/nvim/plugged')
" Plug 'vim-scripts/YankRing.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fishbullet/deoplete-ruby'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'

Plug 'powerman/vim-plugin-ruscmd'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'rking/ag.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thinca/vim-quickrun'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-sleuth'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'DataWraith/auto_mkdir'
Plug 'https://github.com/danro/rename.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-surround'
Plug 'Chun-Yang/vim-action-ag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

Plug 'tpope/vim-rvm'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-endwise'
Plug 'thoughtbot/vim-rspec'
Plug 'danchoi/ri.vim'
Plug 'stefanoverna/vim-i18n'

Plug 'jmcantrell/vim-virtualenv'
Plug 'davidhalter/jedi-vim'
Plug 'lepture/vim-jinja'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
"Plug 'mattn/emmet-vim'
Plug 'tpope/vim-haml'
Plug 'hail2u/vim-css3-syntax'
Plug 'slim-template/vim-slim'
Plug 'ternjs/tern_for_vim'

Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'

Plug 'Konfekt/FastFold'
Plug 'szw/vim-tags'

Plug 'sickill/vim-pasta'
" Plug 'maxbrunsfeld/vim-yankstack'
Plug 'vim-scripts/YankRing.vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'd11wtq/ctrlp_bdelete.vim'

call plug#end()
call ctrlp_bdelete#init()

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hidden
set magic
set number
set autoindent
set ruler
set modeline
set showcmd
set showmode
set showmatch
set autoread
set autowrite
set showfulltag
set noswapfile
set smartcase
set ignorecase
set wildignore+=tags
set wildignore+=*/tmp/*
set wildignore+=*/.idea/*
set wildignore+=*/spec/vcr/*
set wildignore+=*/chef/*
set wildignore+=*/coverage/*
set wildignore+=*.png,*.jpg,*.otf,*.woff,*.jpeg,*.orig
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

if has('spell')
    " Turn off spell checking
    set nospell
    set spelllang=ru,en
    menu Spell.off :setlocal spell spelllang= <cr>
    menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
    menu Spell.Russian :setlocal spell spelllang=ru <cr>
    menu Spell.English :setlocal spell spelllang=en <cr>
    menu Spell.-SpellControl- :
    menu Spell.Word\ Suggest<Tab>z= z=
    menu Spell.Previous\ Wrong\ Word<Tab>[s [s
    menu Spell.Next\ Wrong\ Word<Tab>]s ]s
endif

let g:EasyMotion_leader_key = '<leader>'

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2

let NERDTreeShowBookmarks=1
" let g:NERDTreeDirArrows=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
set clipboard+=unnamedplus
" if has('clipboard')
"   if has('unnamedplus')
"     set clipboard=unnamedplus
"   else
"     set clipboard=unnamed
"   endif
" endif

" Copy current buffer path relative to root of VIM session to system clipboard
nnoremap <Leader><Leader>p :let @+=expand("%")<cr>:echo "Copied file path to clipboard"<cr>
" Copy current filename to system clipboard
nnoremap <Leader><Leader>f :let @+=expand("%:t")<cr>:echo "Copied file name to clipboard"<cr>
" Copy current buffer path without filename to system clipboard
nnoremap <Leader><Leader>d :let @+=expand("%:h")<cr>:echo "Copied file directory to clipboard"<cr>

let g:ctrlp_working_path_mode = 'r'
set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <c-]> :CtrlPtjump<cr>

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let mapleader="\\"

let g:indentLine_enabled = 0
let g:vim_markdown_folding_disabled = 1

let g:jedi#use_tabs_not_buffers = 1
let g:jedi#force_py_version = 3
let g:mustache_abbreviations = 1

let g:tern_map_keys=1

let g:javascript_enable_domhtmlcss = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"



map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!./bin/rspec {spec}"

autocmd BufNewFile,BufRead *.slim set ft=slim
nnoremap <leader>g :Gstatus<CR>

let g:startify_change_to_dir = 0
let g:startify_session_persistence = 1
autocmd FileType gitcommit setlocal spell cursorline
autocmd BufNewFile,BufRead *.md setlocal spell
au BufReadPost quickfix  setlocal cursorline
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
" colorscheme Tomorrow
" colorscheme jellybeans
colorscheme jelleybeans
" colorscheme zenburn
" set background=dark
" colorscheme solarized
" colorscheme monokai-chris
let g:deoplete#enable_at_startup = 1

au BufEnter * inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "<TAB>"
au BufEnter * inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "<TAB>"

set splitbelow
set splitright

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1

let g:pasta_paste_before_mapping = ',P'
let g:pasta_paste_after_mapping = ',p'

" let g:yankring_enabled = 0
let g:yankring_clipboard_monitor = 0
let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'

let g:ale_linters = {'ruby': ['ruby']}

function! ActivateRubocop()
  let g:ale_linters = {'ruby': ['rubocop']}
endfunction

function! DeactivateRubocop()
  let g:ale_linters = {'ruby': ['ruby']}
endfunction  
