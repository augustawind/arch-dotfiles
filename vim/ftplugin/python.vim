let python_highlight_all=1

if !has('nvim')
    setlocal omnifunc=jedi#completions
    let g:neocomplete#sources#omni#input_patterns.python =
        \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    " alternative pattern: '\h\w*\|[^. \t]\.\w*'
    "
    let g:jedi#completions_enabled = 0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#smart_auto_mappings = 0
    let g:jedi#force_py_version = 0
endif

let g:ale_fixers = {
\   'python': [
\       'add_blank_lines_for_python_control_statements',
\       'remove_trailing_lines',
\       'trim_whitespace',
\       'isort',
\       'yapf',
\   ],
\   }
