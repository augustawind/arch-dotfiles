set completeopt=menuone,menu,longest
set wildmenu
set wildmode=longest,list,full
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1
else
    Plug 'Shougo/vimproc.vim'
    Plug 'Shougo/neocomplete.vim'

    let g:neocomplete#auto_complete_delay = 0
    let g:neocomplete#enable_at_startup = 1

    if !exists('g:neocomplete#sources#omni#functions')
        let g:neocomplete#sources#omni#functions = {}
    endif
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
endif

Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<c-n>'
