set textwidth=100
set colorcolumn=100

let g:racer_cmd = "/home/dtr/.cargo/bin/racer"
let g:deoplete#sources#rust#racer_binary = "/home/dtr/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path = "/home/dtr/src/rust/src"
let g:deoplete#sources#rust#show_duplicates = 1

let g:ale_rust_cargo_use_check = 1

let g:ale_fixers = {'rust': ['rustfmt']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

nmap gs <Plug>DeopleteRustGoToDefinitionSplit
nmap gv <Plug>DeopleteRustGoToDefinitionVSplit

nmap <Leader>f  :Cargo fmt<Enter>
nmap <Leader>t  :Cargo test<Enter>
nmap <Leader>c  :Cargo check<Enter>
nmap <Leader>b  :Cargo build<Enter>
nmap <Leader>B  :Cargo build --release<Enter>
nmap <Leader>r  :Cargo run<Enter>
nmap <Leader>R  :Cargo run --release<Enter>
