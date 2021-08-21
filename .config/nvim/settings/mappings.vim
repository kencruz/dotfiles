" set leader to space
nnoremap <SPACE> <Nop>
"let mapleader = "\<Space>"
let mapleader=" "

" load workman layout
" source $HOME/.config/nvim/settings/workman-mapping.vim

" coc mappings
source $HOME/.config/nvim/plug-settings/coc.vim

" copy / paste to/from system clipboard
vnoremap <C-y> "+y
nnoremap <C-p> "+P

" Search and replace word on cursor
nnoremap <Leader>* :%s/\<<C-r><C-w>\>/
" Search and replace word on cursor for all files
nnoremap <Leader>S 
            "\ :let @s='\<'.expand('<cword>').'\>'<CR>
            \ :let @s=expand('<cword>')<CR>
            \ :grep <C-r>s<CR>
            \ :copen<CR>
            \ :cfdo %s/<C-r>s//gc<LEFT><LEFT><LEFT>

" Open a tab
nnoremap <leader>t :tabnew<CR>
" Close a window/tab
nnoremap <leader>w :close<CR>
" Keep focused window, remove the rest
nnoremap <leader>c :on<CR>

" edit vimrc in a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Set working directory to current file
nnoremap <leader>ed :cd %:p:h<CR>: echo 'Working Dir is now:' expand('%:p:h')<CR>

" Quickly make directory for the current buffer
nnoremap <leader>em :!mkdir -p %:h<CR> :echo 'Created Dir: ' expand('%:h')<CR>

" Navigate buffers
nnoremap <leader>bn  :bnext<CR>
nnoremap <leader>bm  :bprevious<CR>
nnoremap <leader>bd  :bd<CR>
" Removes all buffers except for current one
nnoremap <leader>bc  :%bd\|e#<CR>

" Clear word highlights
nnoremap \ :noh<CR>

" Open with Ranger
nnoremap <leader>o :Ranger<CR>

" use to escape terminal mode
tnoremap <Esc> <C-\><C-n>

" FZF
nnoremap <leader>ff :GFiles<CR>
nnoremap <leader>fF :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <C-t> :Tags<CR>

" Show tasks list
nnoremap <leader>st :!task list<CR>
" October move
nnoremap <leader>sm :!cat $HOME/documents/oct2020-move-tasks.todo.md<CR>

" Show highlights
function! SynStack ()
    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
    endfor
endfunction
map <leader>em :call SynStack()<CR>
