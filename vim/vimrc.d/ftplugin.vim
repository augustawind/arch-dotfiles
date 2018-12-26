" ------------------------------------------------
" elm

Plug 'elmcast/elm-vim'
if has('nvim')
    Plug 'pbogut/deoplete-elm'
endif

" ------------------------------------------------
" git

Plug 'tpope/vim-git'

" ------------------------------------------------
" go

Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'fatih/vim-go'

" ------------------------------------------------
" haskell

Plug 'nbouscal/vim-stylish-haskell'
Plug 'godlygeek/tabular'
Plug 'eagletmt/neco-ghc'

" ------------------------------------------------
" javascript

Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'
if has('nvim')
    Plug 'carlitux/deoplete-ternjs'
endif

Plug 'moll/vim-node'
Plug 'elzr/vim-json'
Plug 'raichoo/purescript-vim'

Plug 'kchmck/vim-coffee-script'
Plug 'jwhitley/vim-literate-coffeescript'
Plug 'noc7c9/vim-iced-coffee-script'


" ------------------------------------------------
" jinja2

Plug 'Glench/Vim-Jinja2-Syntax'

" ------------------------------------------------
" python

Plug 'vim-scripts/indentpython.vim'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

" ------------------------------------------------
" python

Plug 'alexgenco/neovim-ruby'

" ------------------------------------------------
" ruby

Plug 'fishbullet/deoplete-ruby'

" ------------------------------------------------
" rust

Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'cespare/vim-toml'
