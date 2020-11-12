" gyazo
" Author: skanehira
" License: MIT

if exists('loaded_gyazo')
  finish
endif
let g:loaded_gyazo = 1

command! -nargs=* -complete=dir GyazoUpload call gyazo#upload(<f-args>)
