" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

" keymaps
map <C-n> :NERDTreeToggle<CR>

" close NerdTree if it's the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax on
set number
set cursorline
set termguicolors
filetype indent on
set lazyredraw
set showmatch
set incsearch

set background=light
colorscheme PaperColor

set tabstop=2 shiftwidth=2 expandtab
set guifont=Hack:12

au BufNewFile,BufRead Jenkinsfile setf groovy
au BufNewFile,BufRead *.json so ~/.vim/syntax/json.vim
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/syntax/yaml.vim

call plug#end()
