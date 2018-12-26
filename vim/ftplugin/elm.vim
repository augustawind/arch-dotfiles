nmap <leader>m  <Plug>(elm-make)
nmap <leader>t  <Plug>(elm-test)
nmap <Leader>r  <Plug>(elm-repl)

let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

if !has('nvim')
    let g:neocomplete#sources#omni#input_patterns.elm =
        \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
endif
