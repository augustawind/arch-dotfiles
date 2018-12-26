" quick save
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a


" sane vim splits
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" reload .vimrc
map <leader>s :source $MYVIMRC<CR>

" edit vimrc.d/
map <leader>e :e ~/.vim/vimrc.d/<CR>

" fold/unfold with space
nnoremap <space> za

" navigate/close quickfix
map <leader>n :cnext<CR>
map <leader>m :cprevious<CR>
map <leader>a :cclose<CR>

" chdir to current file
map <leader>. :lcd %:p:h<CR>
" chdir to parent directory
map <leader>_ :lcd ..<CR>

" navigate buffers easily
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <C-X> :bdelete<CR>

" make ZZ shortcut use :xa instead of :wq
nnoremap ZZ :xa<CR>

" run linter autofix utility (plugin: 'w0rp/ale')
map <leader>f :ALEFix<CR>

" cycle thru installed colorschemes (plugin: 'xolox/vim-colorscheme-switcher')
map <leader>( :PrevColorScheme<CR>
map <leader>) :NextColorScheme<CR>

" cycle thru light/dark background
map <leader>g :call BackgroundToggle()<CR>

function! BackgroundToggle()
    if &background == "light"
        execute "set background=dark"
    else
        execute "set background=light"
    endif
endfunction

" open/close tag browser
nnoremap <leader>t :TagbarToggle<CR>
