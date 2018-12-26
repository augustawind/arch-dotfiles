setlocal autowrite

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1

nmap <leader>r  <Plug>(go-run)
nmap <leader>t  <Plug>(go-test)
nmap <Leader>c  <Plug>(go-coverage-toggle)
nmap <Leader>l  <Plug>(go-lint)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
