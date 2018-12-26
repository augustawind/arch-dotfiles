setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

set textwidth=80
set colorcolumn=80

let b:ale_linters = {'css': ['stylelint']}
let b:ale_fixers = {'css': ['stylelint']}
let b:ale_lint_on_save = 1
