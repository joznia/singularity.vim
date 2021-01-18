" Palette: {{{

let g:singularity#palette           = {}
let g:singularity#palette.fg        = ['#BBC2CF', 253]

let g:singularity#palette.bglighter = ['#3f444a', 238]
let g:singularity#palette.bglight   = ['#23272e', 237]
let g:singularity#palette.bg        = ['#282C34', 236]
let g:singularity#palette.bgdark    = ['#202328', 235]
let g:singularity#palette.bgdarker  = ['#21242B', 234]

let g:singularity#palette.comment   = ['#5b6268',  61]
let g:singularity#palette.selection = ['#9ca0a4', 239]
let g:singularity#palette.subtle    = ['#3f444a', 238]

let g:singularity#palette.pink      = ['#51AFEF', 117]
let g:singularity#palette.yellow    = ['#98BE65',  84]
let g:singularity#palette.orange    = ['#DA8548', 215]
let g:singularity#palette.cyan      = ['#C678DD', 212]
let g:singularity#palette.green    = ['#A9A1E1', 141]
let g:singularity#palette.red       = ['#FF6C6B', 203]
let g:singularity#palette.purple     = ['#ECBE7B', 228]

"
" ANSI
"
let g:singularity#palette.color_0  = '#202328'
let g:singularity#palette.color_1  = '#FF6C6B'
let g:singularity#palette.color_3  = '#98BE65'
let g:singularity#palette.color_2  = '#ECBE7B'
let g:singularity#palette.color_4  = '#A9A1E1'
let g:singularity#palette.color_6  = '#C678DD'
let g:singularity#palette.color_5  = '#46D9FF'
let g:singularity#palette.color_7  = '#ECBE7B'
let g:singularity#palette.color_8  = '#5b6268'
let g:singularity#palette.color_9  = '#FF6C6B'
let g:singularity#palette.color_10 = '#98BE65'
let g:singularity#palette.color_11 = '#ECBE7B'
let g:singularity#palette.color_12 = '#A9A1E1'
let g:singularity#palette.color_13 = '#C678DD'
let g:singularity#palette.color_14 = '#46D9FF'
let g:singularity#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! singularity#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'singularity'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
