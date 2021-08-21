" Load rust project root properly for coc-nvim
let b:coc_root_patterns = ['Cargo.toml', '.git']
" run cargo
nnoremap <leader>dr :!cargo run
" Run cargo tests on current file only
nnoremap <leader>db :!cargo test %:t:r
" nnoremap <leader>b :tabnew<CR> :term cargo test %:t:r
highlight CocRustChainingHint ctermfg=245 guifg=#555555

