" session management (gui only)
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
let g:session_autosave = 'yes'

" session management
Plug 'tpope/vim-obsession'

" file explorer
Plug 'justinmk/vim-dirvish'

" fuzzy find-anywhere
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_custom_ignore = '\v[\/]dist$'

" unify tabs and buffers
Plug 'ap/vim-buftabline'

" dash app support
Plug 'rizzatti/dash.vim'
nmap <Leader>D :Dash<CR>

" colorscheme switcher
Plug 'xolox/vim-colorscheme-switcher'
let g:colorscheme_switcher_keep_background = 0
let g:colorscheme_switcher_exclude_builtins = 1
let g:colorscheme_switcher_define_mappings = 0

" git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" ripgrep
Plug 'jremmen/vim-ripgrep'

" repeat last command (enhanced for tpope)
Plug 'tpope/vim-repeat'

" surround things with other things
Plug 'tpope/vim-surround'

" expand %% to current buffer dir
cabbr <expr> %% expand('%:p:h')

" source code browser
Plug 'majutsushi/tagbar'
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '/Users/dtr/src/rst2ctags/rst2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
    \ }
