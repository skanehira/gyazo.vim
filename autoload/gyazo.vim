" gyazo
" Author: skanehira
" License: MIT

let s:yank_reg = '*'
if has('linux')
  let s:yank_reg = '+'
endif

function! s:yank(url) abort
  call setreg(s:yank_reg, a:url)
endfunction

function! s:err(msg) abort
  echohl ErrorMsg
  echom a:msg
  echohl None
endfunction

function! gyazo#upload(...) abort
  if a:0 > 0
    let url = printf('gyazo %s', a:1)->system()
  else
    let url = system('gyazo -c')
  endif

  let url = url->trim()
  if url !~? 'https:\/\/.*'
    call s:err(url)
    return
  endif

  if get(g:, 'gyazo_insert_markdown_url', 0)
    let url = printf('![](%s)', url)
    call setline('.', url)
    return
  endif
  call s:yank(url)
  echom printf('yanked %s', url)
endfunction
