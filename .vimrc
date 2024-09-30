syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=a
set incsearch
set showmatch
set ignorecase
set incsearch
set hlsearch


call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


"Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y = ''
let g:airline_section_z = '%l:%c'
let g:airline_theme = 'tomorrow'

" Force a color for the popup menu
highlight! default link CocMenuSel PmenuSel
highlight! Pmenu ctermbg=236 ctermfg=250 guibg=#3c3836 guifg=#ebdbb2
highlight! PmenuSel ctermbg=240 ctermfg=255 guibg=#504945 guifg=#fbf1c7
highlight! PmenuSbar ctermbg=238 guibg=#665c54
highlight! PmenuThumb ctermbg=244 guibg=#928374


inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

