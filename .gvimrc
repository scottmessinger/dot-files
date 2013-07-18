" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

" set guifont=Source\ Code\ Pro\ for\ Powerline:h12          " Font family and font size.
" set guifont=Monaco\ for\ Powerline:h12          " Font family and font size.
set guifont=Inconsolata\ for\ Powerline:h12          " Font family and font size.


set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=dark               " Background.
set lines=70 columns=200          " Window dimensions.

set guioptions-=r                 " Don't show right scrollbar
set guioptions-=l                 " Don't show right scrollbar

set nowrap
set macmeta

" allow highlighting with shift

if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif


" put command t window at top
let g:CommandTMatchWindowAtTop = 1

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

"
" Map command t to command-t
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>
  imap <D-t> <Esc>:CtrlP<CR>
  map <M-t> :CommandTFlush<cr>\|:CommandT %%<cr>
  imap <M-t> <Esc>:CommandTFlush<cr>\|:CommandT %%<cr>
  map <C-b> <Esc>:CtrlPBuffer<CR>
endif

" Set up adding of new tabs with ctrl p
if has("gui_macvim")
  macmenu &File.Open\ Tab\.\.\. key=<nop>
  map <D-T> :tabnew <bar> :CtrlP<CR>
  imap <D-T> <Esc>:tabnew<CR>
  vmap <D-T> :tabnew<CR>
endif


"open new command-t selections in a tab
"let g:CommandTAcceptSelectionTabMap='<CR>'

"open tabs with command-<tab number>
map <M-D-Left> gT
map <M-D-Right> gt
imap <M-D-Left> <Esc>gT
imap <M-D-Right> <Esc>gt

map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .gvimrc source $MYGVIMRC
endif

colorscheme railscasts2

"let g:solarized_termcolors=256
set t_Co=256
"set background=dark
"colorscheme solarized

macmenu &File.Save key=<nop>

" vim solarized settings
let g:solarized_contrast="normal"
let g:solarized_visibility="high"

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
