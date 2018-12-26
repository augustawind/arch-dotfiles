let b:ale_linters = {'javascript': ['eslint']}

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

if has('nvim')
    " Whether to include the types of the completions in the result data. Default: 0
    let g:deoplete#sources#ternjs#types = 1
    " Whether to include JavaScript keywords when completing something that is not 
    " a property. Default: 0
    let g:deoplete#sources#ternjs#include_keywords = 1
else
    let g:neocomplete#sources#omni#functions.javascript = [
                \ 'tern#Complete',
                \ ]
endif
