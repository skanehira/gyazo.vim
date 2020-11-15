" gyazo
" Author: skanehira
" License: MIT

let s:yank_reg = '*'
if has('linux') || has('unix')
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
  let to_insert = get(g:, 'gyazo_insert_markdown_url', 0)
  let cmd = printf('gyazo')
  if to_insert
    let cmd = printf('gyazo -m')
  endif

  if a:0 > 0
    let cmd = printf('%s %s', cmd, a:1)
  else
    let cmd = printf('%s -c', cmd)
  endif

  let url = trim(system(cmd))
  if url !~? 'https:\/\/.*'
    call s:err(url)
    return
  endif

  if to_insert
    call setline('.', url)
  else
    call s:yank(url)
    echom printf('yanked %s', url)
  endif
endfunction
