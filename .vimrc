source ~/.vim/plugins.vim                                   " Manage plugins

syntax enable
let mapleader=','                                          " the default leader is \, but ',' is better
colorscheme atom-dark-256
set t_Co=256                                               " set to 256 colors
set number
set nocompatible
set hidden
filetype indent on
"tabs 
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline        " highlight entire row that contains the cursor
set background=light
set hlsearch
set incsearch
set nowrap		 " do not wrap lines
set autoindent		 " always set autoindenting on
set autoread      " set to auto read when a file is changed from the outside
set showmatch     " set matching brackets when text indicator is over them

"shortcuts 
nnoremap <C-w> :bd<cr>
" navigate splits easier; no need for Ctrl-W prefix
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" browse files FZF
map <C-p> :GitFiles<cr>
map <C-t> :History<cr>
map <C-b> :Buffers<cr>

"managing vimrc file 
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
"Nerd Tree
nmap <Leader>n  :NERDTreeToggle<cr>
let NERDTreeHijackNetrw = 0
" airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
" prevent buffers from showing up in the command line
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:bufferline_active_buffer_left='*'
"clear search results 
nmap <Leader><Space> :nohlsearch<cr>
nmap <Leader>so :w<cr>:so %<cr>

" tmuxline
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W #F',
      \'cwin' : '#I #W #F',
      \'x'    : '%a',
      \'y'    : '%R',
      \'z'    : '#H'}

" tmux-complete configuration
let g:tmuxcomplete#trigger = 'completefunc'


"git gutter (with railscasts)
" highlight SignColumn ctermbg=black
hi clear SignColumn
highlight GitGutterAdd ctermbg=46 "Green
highlight GitGutterChange ctermbg=220 "Gold
highlight GitGutterDelete ctermbg=196 "Red
highlight GitGutterChangeDelete ctermbg=208 "DarkOrange

highlight GitGutterAdd ctermfg=black "Green
highlight GitGutterChange ctermfg=black "Gold
highlight GitGutterDelete ctermfg=black "Red
highlight GitGutterChangeDelete ctermfg=black "DarkOrange
let g:indentLine_enabled=0
"syntatic 
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,space:␣

" Js/html beutify
".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"Nerd Comment
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
