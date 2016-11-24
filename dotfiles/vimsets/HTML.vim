:syntax on
:iab HTMLS 
\<CR><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
\<CR><html><Enter><head><title></title></head><Enter><body><Enter><Enter></body><Enter></html>

iab DOCTYPE <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

iab >; &gt;
iab <; &lt;

iab SIG 
\<CR><p><i>
\<CR>Henry Qin<br>
\<CR>Susan Rodger<br>
\<CR>Duke University Department of Computer Science<br>
\<CR>Summer 2008
\<CR></i></p>

:iab htaccess 
\<CR>AuthType Basic
\<CR>AuthUserFile /home/home1/hq6/secure/.htpasswd
\<CR>AuthName "INSERT_NAME_OF_AREA"
\<CR>AuthGroupFile /dev/null
\<CR>
\<CR>Require valid-user

"Just some code for multi-line abbreviations
:vmap <C-c>   :s/^/\\\<\C\R\>/<CR>:nohlsearch<CR>
:vmap <C-A-c> :s/\\<CR[>]//<CR>:nohlsearch<CR>
