" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.
"call pathogen#helptags()
"silent! call pathogen#runtime_append_all_bundles()
call pathogen#infect()
filetype off
syntax on
syntax enable                     " Turn on syntax highlighting.
"call pathogen#runtime_append_all_bundles()
set nocompatible                  " Must come first because it changes other options.



 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

" Bundle "git://github.com/Lokaltog/vim-powerline.git"

" Powerline
"set t_Co=256
"source /usr/local/lib/python2.7/site-packages/powerline/ext/vim/source_plugin.vim
"python from powerline.ext.vim import source_plugin; source_plugin()
"let g:Powerline_symbols = 'fancy'

set autoindent
set copyindent    " copy the previous indentation on autoindenting


runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

"autocmd filetype javascript setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4

set laststatus=2                  " Show the status line all the time
set cursorline                    " Highlight current line

" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Or use vividchalk
colorscheme railscasts2

" Tab mappings.
" map <leader>tt :tabnew<cr>
" map <leader>te :tabedit
" map <leader>tc :tabclose<cr>
" map <leader>to :tabonly<cr>
" map <leader>tn :tabnext<cr>
" map <leader>tp :tabprevious<cr>
" map <leader>tf :tabfirst<cr>
" map <leader>tl :tablast<cr>
" map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" map nerd tree toggle
"nmap <leader>d :NERDTreeToggle<CR>

"bind command-] to indent right
nmap <D-]> >>
vmap <D-]> >gv
imap <D-]> <C-O>>>

"bind command-[ to indent left
nmap <D-[> <<
vmap <D-[> <gv
imap <D-[> <C-O><<

" window splitting mappings
" split vertically with <leader> v
" split horizontally with <leader> s
nmap <leader>v :vsplit<CR> <C-w><C-w>
nmap <leader>s :split<CR> <C-w><C-w>

" Make it way easier to switch windows (<leader>w)
nmap <leader>w <C-w><C-w>_
nmap <leader>w <C-w><C-w>_

map <leader>q :bd<cr>


"map commenting
nmap <D-/> <leader>ci <CR>
vmap <D-/> <leader>ci <CR>
imap <D-/> <C-O><leader>ci

" allow highlighting with shift
if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

let g:CommandTMatchWindowAtTop = 1

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" lets me quickly edit my vimrc file in a new tab
nmap <leader>o :tabedit $MYVIMRC<CR>
nmap <leader>p :tabedit $MYGVIMRC<CR>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Make escaping easier
imap jk <Esc>l
imap jj <Esc>l
" let mapleader = ","

" nnoremap / /\v
" vnoremap / /\v
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
au FocusLost * :wa



"au BufRead,BufNewFile *.json set filetype=json
"au! Syntax json source /Users/ScottMessinger/.vim/bundle/json/json.vim

map <D-s> <esc>:w<CR>
imap <D-s> <esc>:w<CR>
vmap <D-s> <esc>:w<CR>



" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <leader>l :nohl<CR><C-l>

"turn off folding
set nofoldenable


" set syntax support for rabl files
"au BufRead,BufNewFile *.json.rabl setf ruby
"au BufRead,BufNewFile *.rabl setf ruby
"

" make fast access to buffers
map <leader>b :buffers<CR>:b<space>


" mappings for comel case motion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" easier split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Sweet Vim RSPEC setting
let $SWEET_VIM_RSPEC_SHOW_PASSING="true"
map <M-D-r> :SweetVimRspecRunFocused<CR>


" show syntax under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" tabular
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif


" auto align
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction



set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.scssc,*.swo,*.log
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

filetype plugin indent on         " Turn on file type detection.


set list                          " Show invisible characters

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen




"-------------------------
"SELECT TEXT OBJECT
"-------------------------

onoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR>
onoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR>
vnoremap <silent>ai :<C-U>cal <SID>IndTxtObj(0)<CR><Esc>gv
vnoremap <silent>ii :<C-U>cal <SID>IndTxtObj(1)<CR><Esc>gv

function! s:IndTxtObj(inner)
  let curline = line(".")
  let lastline = line("$")
  let i = indent(line(".")) - &shiftwidth * (v:count1 - 1)
  let i = i < 0 ? 0 : i
  if getline(".") !~ "^\\s*$"
    let p = line(".") - 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p > 0 && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      -
      let p = line(".") - 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! 0V
    call cursor(curline, 0)
    let p = line(".") + 1
    let nextblank = getline(p) =~ "^\\s*$"
    while p <= lastline && ((i == 0 && !nextblank) || (i > 0 && ((indent(p) >= i && !(nextblank && a:inner)) || (nextblank && !a:inner))))
      +
      let p = line(".") + 1
      let nextblank = getline(p) =~ "^\\s*$"
    endwhile
    normal! $
  endif
endfunction
