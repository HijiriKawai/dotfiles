let g:coc_global_extensions = [
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-eslint',
  \ 'coc-yaml',
  \ 'coc-tsserver',
  \ 'coc-toml',
  \ 'coc-rust-analyzer',
  \ 'coc-markdownlint',
  \ 'coc-json',
  \ 'coc-go',
  \ 'coc-deno',
  \ 'coc-css',
  \ 'coc-git',
\]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

