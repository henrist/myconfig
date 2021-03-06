"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       VUNDLE INITIALIZATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Run :PluginInstall to install these

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on

"Color schemes
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

"Awesomeness from Tim Pope
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sleuth'

Plugin 'pangloss/vim-javascript'

" Disabled due to not getting it to work properly on Vim 8
"Plugin 'scrooloose/syntastic'

Plugin 'craigemery/vim-autotag'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plugin 'editorconfig/editorconfig-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       PLUGIN CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_mode_map = {'mode': 'active'}
let g:syntastic_javascript_checkers = ['jshint']

autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType tex let b:dispatch = 'pdflatex % -file-line-error'

autocmd FileType tex set commentstring=\%%s
runtime! ftplugin/man.vim
