syntax clear
syntax case match

"syntax match noteConsciousness /^.*/ 

syntax region completed start=/^\s*DONE:/ end=/^$/ contains=boldme
syntax match completed /^\s*>>.*/ contains=boldme

syntax region nTODO start=/^\s*TODO:/ end=/^$/ contains=boldme
syntax match nTODO /^\s*!!.*/ contains=boldme

syntax region info start=/^\s*INFO:/ end=/^$/ contains=boldme
syntax match info /^\s*&&.*/ contains=boldme

syntax match boldme /\*.\{-1,}\*/

highlight completed guifg=Green ctermfg=DarkGreen
highlight nTODO guifg=Purple ctermfg=3
highlight info guifg=Blue ctermfg=Cyan

highlight boldme ctermfg=Red
