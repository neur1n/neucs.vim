scriptencoding utf-8

if exists('g:loaded_neucs')
  finish
endif
let g:loaded_neucs = v:true

let s:save_cpo = &cpoptions
set cpoptions&vim

augroup neucs
  autocmd!
  autocmd FileType * call neucs#HighlightLink()
augroup END

let &cpoptions = s:save_cpo
unlet s:save_cpo
