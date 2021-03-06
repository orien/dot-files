if &compatible
  set nocompatible
endif

set encoding=utf-8
filetype off

packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('rizzatti/dash.vim')
call minpac#add('junegunn/fzf')
call minpac#add('morhetz/gruvbox')
call minpac#add('scrooloose/nerdtree')
call minpac#add('godlygeek/tabular')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-characterize')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-cucumber')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-haml')
call minpac#add('tpope/vim-markdown')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-rbenv')
call minpac#add('thoughtbot/vim-rspec')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-surround')

set hidden
set nojoinspaces

" integrate with the mouse
set mouse=a

" setup visuals
syntax on
filetype plugin indent on
set list
set number
set laststatus=2

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" airline HUD
let g:airline_powerline_fonts = 0
let g:airline_detect_modified = 1
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline#extensions#tabline#enabled = 1

" bufferline
let g:bufferline_echo=0

" colour scheme
let g:airline_theme='base16_gruvbox_dark_hard'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" change cursor in insert mode (iterm2)
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" formating
set ts=2 sts=2 sw=2 expandtab

" Use Z Shell with profile
set shell=zsh\ -l

" ruby
let ruby_no_expensive = 1
" let g:ruby_indent_access_modifier_style="outdent"
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!spring rspec -fd {spec}"

nnoremap <C-p> :<C-u>FZF<CR>
