if singularity#should_abort('php')
    finish
endif

hi! link phpClass           Type
hi! link phpClasses         Type
hi! link phpDocTags         SingularityCyanItalic
hi! link phpFunction        Function
hi! link phpParent          Normal
hi! link phpSpecialFunction SingularityCyan
