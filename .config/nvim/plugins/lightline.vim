set laststatus=2
set noshowmode
let g:lightline = {
  \ 'enable': { 'tabline': 0 },
  \ 'colorscheme': 'edge',
  \ 'active': {
    \ 'left': [ [ 'mode', 'paste' ], [ 'fugitive' ,'filename', 'method' ], ['coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok'] ],
    \ 'right':[ ['coc_status'] ,[ 'filetype', 'fileencoding', 'lineinfo', 'percent' ] ],
    \ },
  \ 'component_function': {
    \ 'fugitive': 'LightlineFugitive',
    \ 'filename': 'LightlineFilename',
    \ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator' :{ 'left': '\ue0b1', 'right': '\ue0b3' },
\ }

call lightline#coc#register()

function! LightlineFugitive()
  return fugitive#head()
endfunction

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
