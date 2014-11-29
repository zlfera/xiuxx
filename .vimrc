set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'othree/html5.vim'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'lepture/vim-css'
"Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/neosnippet.vim'
"Bundle 'Shougo/neosnippet-snippets'
Bundle 'ervandew/supertab'
Bundle 'slim-template/vim-slim'


"let g:neosnippet#enable_snipmate_compatibility = 1

"let g:neocomplcache_enable_at_startup=1


""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

colorscheme desert
autocmd FileType ruby set dictionary=~/.vim/bundle/vim-ruby/dict/ruby.dict
set mouse=n
set number
set nobackup
set noswapfile
set wildmenu
set autowrite
set smartcase
set scrolloff=3
set backspace=2
set expandtab
set shiftwidth=2
set cursorline
set softtabstop=2
set tabstop=8
set shortmess=atI
""""""""""""""""""""""""""""""
set completefunc=syntaxcomplete#Complete
map <F12> :NERDTreeToggle<CR>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

"inoremap < <><ESC>i





let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '✗'
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 1
"let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }
"设置rubocop
let g:syntastic_ruby_checkers = ['mri', 'rubocop']


set laststatus=2
set ttimeoutlen=50
let g:airline_symbols = {}


"""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe
"""""""""""""""""""""""""""""""""""""""""""""""""


let g:airline_left_sep = '▶'
let g:airline_right_sep='◀'

let g:airline_symbols.linenr='L'
let g:airline_symbols.branch='⎇'
let g:airline_symbols.paste='Þ'
let g:airline_symbols.whitespace='Ξ'
let g:airline#extensions#whitespace#enabled=0


""""""""""

if has("cscope")
  set cst
  if filereadable("cscope.out")
      cs add cscope.out
  endif
endif