" This function allows us to perform substitutions without losing our search
" history.
function RunInFunctionScope(cmd)
    execute a:cmd
endfunction

" , #perl # comments
map ,# :call RunInFunctionScope(":s/^/#/") <CR>

" ,/ C/C++/C#/Java // comments
map ,/ :call RunInFunctionScope(":s!^!//!")<CR>

" ,< HTML comment -- Note that double-escaped back-slashes
map ,< :call RunInFunctionScope(":s/^\\(.*\\)$/<!-- \\1 -->/")<CR>

" c++ java style comments
map ,* :call RunInFunctionScope("s!^\\(.*\\)$!/\\* \\1 \\*/!")<CR>

" Latex comments
map ,5 :call RunInFunctionScope(":s/^/%/")<CR>
map ,% :call RunInFunctionScope(":s/^/%/")<CR>

" Random notes
map ,f :setf Note<CR>

map ,t :s/.*/\=printf('%-80s', submatch(0))<CR>
