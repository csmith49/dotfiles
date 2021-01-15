" Hardcore - vim color scheme for use in terminals with the Hardcore theme
" Based on the default pablo.vim scheme
" Maintainer:	Calvin Smith <email@cjsmith.io>

" if syntax highlighting is on, reset all the colors
hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "hardcore"

" Base Elements
highlight Normal            ctermfg=15              cterm=none
highlight Comment           ctermfg=6
highlight Constant          ctermfg=1               cterm=bold
highlight Identifier        ctermfg=4               cterm=bold
highlight Statement         ctermfg=15
highlight Type              ctermfg=2
highlight PreProc           ctermfg=10
highlight Special           ctermfg=12

" UI Elements

" Navigation
highlight CursorLine                    ctermbg=8   cterm=none
highlight LineNr            ctermfg=8               cterm=none
highlight CursorLineNr      ctermfg=14  ctermbg=8   cterm=none
highlight SignColumn                    ctermbg=0
highlight EndOfBuffer       ctermfg=0
highlight VertSplit         ctermfg=8   ctermbg=0   cterm=none

" Highlighting
highlight Error                         ctermbg=3
highlight Todo              ctermfg=0   ctermbg=3
highlight Search                        ctermbg=3

" Git Gutter
highlight GitGutterAdd      ctermfg=2               cterm=bold
highlight GitGutterChange   ctermfg=1               cterm=bold
highlight GitGutterDelete   ctermfg=3               cterm=bold

" Nerd Tree
highlight NERDTreeDir       ctermfg=3
highlight NERDTreeFile      ctermfg=15
highlight NERDTreeExecFile  ctermfg=15              cterm=bold
highlight NERDTreeDirSlash  ctermfg=3 
highlight NERDTreeOpenable  ctermfg=6
highlight NERDTreeClosable  ctermfg=6
highlight NERDTreeUp        ctermfg=2
