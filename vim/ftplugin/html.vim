setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

set textwidth=100
set colorcolumn=100

let b:ale_html_tidy_options = '-config .tidyrc'
let b:ale_linters = {'html': ['tidy']}
