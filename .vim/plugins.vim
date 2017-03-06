call plug#begin('~/.vim/plugged')
" Auto Complete
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" Information panels
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline' " show bufferes in the command bar

"browse files and git
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'tpope/vim-vinegar'                " open file browser using the '-'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"Javascript 
Plug 'mattn/emmet-vim' " improves HTML & CSS workflow
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'scrooloose/syntastic' " Checks for syntax errors
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'yggdroot/indentline'   " add identation lines :IndentLinesToggle or let g:indentLine_enabled = 0 to disable
Plug 'scrooloose/syntastic' " Checks for syntax errors
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'maksimr/vim-jsbeautify' " indent html and javascript
Plug 'scrooloose/nerdcommenter'
"Ctag for code navigation 
Plug 'craigemery/vim-autotag'


" All plugins must be added before the following line
call plug#end()

