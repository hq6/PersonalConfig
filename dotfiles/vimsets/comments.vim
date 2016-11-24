" , #perl # comments
map ,# :s/^/#/<CR>

" ,/ C/C++/C#/Java // comments
map ,/ :s/^/\/\//<CR>

" ,< HTML comment
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>

" c++ java style comments
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>

" Latex comments
map ,5 :s/^/%/<CR>
map ,% :s/^/%/<CR>

map ,f :setf Note<CR>

map ,t :s/.*/\=printf('%-80s', submatch(0))<CR>
