"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Shortcut for moving between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leadermaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
nmap <leader>t :nmap <lt>leader>r :silent! !outpipe  <lt>cr> \\| :redraw!<lt>cr><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nmap <leader>d :redraw!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Layout Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

set number
set relativenumber

" Indents
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

autocmd Filetype html setlocal ts=2 sw=2 sts=2
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Statusline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=
set statusline+=\ %f
set statusline+=%h%m%r%w
set statusline+=\ [%{strlen(&ft)?&ft:'none'},
set statusline+=\ %{strlen(&fenc)?&fenc:&enc},
set statusline+=\ %{&fileformat}]
set statusline+=\ %F
set statusline+=\ (%l,%c)
set statusline+=%=
set statusline+=%{getcwd()}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
set shellcmdflag=-ic
set mouse=a

" Remove trailing whitespace when saving
autocmd BufWritePre * :%s/\s\+$//e

" Fix common typos
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp +=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
