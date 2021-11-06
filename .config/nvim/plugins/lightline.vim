set laststatus=2
set noshowmode
let g:lightline = {
  \ 'enable': { 'tabline': 0 },
  \ 'colorscheme': 'PaperColor',
  \ 'active': {
    \ 'left': [ [ 'mode', 'paste' ], [ 'fugitive' ,'filename', 'method' ], ['cocstatus'] ],
    \ 'right':[ [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ] ],
    \ },
  \ 'component_function': {
    \ 'cocstatus': 'coc#status',
    \ 'fugitive': 'LightlineFugitive',
    \ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator' :{ 'left': '\ue0b1', 'right': '\ue0b3' },
\ }

function! LightlineFugitive()
  return fugitive#head()
endfunction

