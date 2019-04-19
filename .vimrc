call plug#begin()
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kabbamine/vcoolor.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
"Plug 'scrooloose/syntastic'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ervandew/supertab'
Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --ts-completer' }
"Plug 'pangloss/vim-javascript'
Plug 'sirver/ultisnips'
"Plug 'isruslan/vim-es6'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/matchit.zip'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
"Plug 'othree/html5.vim', { 'for': 'html'  }
"Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] }
let g:jsx_ext_required = 0
"Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
"Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'gko/vim-coloresque'
Plug 'stephenway/postcss.vim', { 'for': 'css' }
Plug 'elzr/vim-json', { 'for': 'json'  }
let g:vim_json_syntax_conceal = 0
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'valloric/matchtagalways'
let g:mta_filetypes = {
			\ 'javascript.jsx' : 1,
			\}
Plug 'pablopunk/dynamic-file-completion.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'styled-components/vim-styled-components'
call plug#end()
"map Ranger File Tree
let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>
"Ranger // open current file by default
"RangerCurrentFile // Default Ranger behaviour
"RangerCurrentDirectory
"RangerWorkingDirectory

"RangerNewTab
"RangerCurrentFileNewTab
"RangerCurrentDirectoryNewTab
"RangerWorkingDirectoryNewTab

"set termguicolors
filetype plugin indent on
filetype on
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
""set completeopt=longest,menuone
""makes enter key select highlighted text like <C-y>
":inoremap <expr> <CR> pumvisible() ? '\<C-y>' : "\<C-g>u\<CR>"
""Make <C-N> work as usual when menu appears simulate down key
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  "\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
""simulates c-x c-o then simulates c-n c-p and then down
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  "\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" omni completion <C-X><C-O> open pop up <C-N> forward <C-P> back
"set paste toggle
set pastetoggle=<Leader><Leader>p

" move lines up or dowwn
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '>-2<CR>gv=gv

"ma - mark a `a to return, mb = mark b `b to return
":'a,'bs/C/S/c  changes all c's above to S
" global search and replace with confirm y or n
":%s/img/jpg/gc


"matchit.vim
:filetype plugin on
packadd! matchit
:source $VIMRUNTIME/macros/matchit.vim
syntax on
"color dracula
let g:javascript_plugin_jsdoc = 1
set clipboard=unnamed
"set pastetoggle=<F2>
set mouse=a
set t_Co=256
let g:dracula_italic = 0
colorscheme dracula
"colo dracula
highlight Normal ctermbg=None
"set t_Co=256
"let g:colors_name = 'dracula'

 ":read ~/.vim/templates/htmlskeleton.sh
 "
set rtp+=/usr/local/opt/fzf
" customize fzf colors to match your color scheme
let g:fzf_colors =
	\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_buffers_jump = 1
nmap <Leader>b :buffers<CR>
nmap <Leader>n :files<CR>
nmap <Leader>m :bufdo! bw<CR>



" set leaderf to open FZF
nmap <Leader>f :FZF<CR>


" settings for vcoolor
let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<leader>c'


" set leader key to \
let mapleader="\\"

"re-map esc to jk
inoremap jk <esc>

"emmet leader key
let g:user_emmet_leader_key=','

" fugitive mappings
" :Gdiff
nnoremap <leader>gd : Gdiff<CR>
" :diffget //2 file visually on the left
nnoremap gd2 :diffget //2<CR>
" :diffget //3 file visually on the right
nnoremap gd3 :diffget //3<CR>
" :diffupdate -- fix spacing after change
nnoremap gdu :diffupdate<CR>


set showmatch

set wildmenu
set wildmode=longest:full,full

"set cursorline

set number

set incsearch

set hidden


"NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

" ALE Config.  more below
" Enable completion where available.
 " This setting must be set before ALE is loaded.
 let g:ale_completion_enabled = 1"
 set wildmode=longest:full,full


" better rainbow parentheses color options
let g:rbpt_colorpairs = [
		\ ['darkMagenta',       'RoyalBlue3'],
		\ ['Darkblue',    'SeaGreen3'],
		\ ['darkgray',    'DarkOrchid3'],
		\ ['darkgreen',   'seagreen3'],
		\ ['darkcyan',    'RoyalBlue3'],
		\ ['darkblue',     'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['darkMagenta',       'seagreen3'],
		\ ['gray',        'RoyalBlue3'],
		\ ['darkcyan',       'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['Darkblue',    'darkcyan'],
		\ ['darkgreen',   'RoyalBlue3'],
		\ ['darkcyan',    'SeaGreen3'],
		\ ['lightmagenta',     'DarkOrchid3'],
		\ ['lightcyan',         'darkmagenta'],
		\ ]


let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
"augroup filetype javascript syntax=javascript
"autocmd FileType javascript syntax clear jsFuncBlock jsFuncArgs


"This is syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_html_tidy_ignore_errors = [
    "\ '<ion-icon> is not recognized!', 'discarding unexpected <ion-icon>', 'discarding unexpected </ion-icon>'
    "\ ]

 " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
set runtimepath+=~/.vim/ultisnips_rep
"set runtimepath+=~/.vim/mysnippets/UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsSnippetDir="~/.vim/mysnippets"
"let g:UltiSnipsSnippetDirectories="~/.vim/mysnippets"
 " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" this turns tab off for YCM.
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
" now cycle through with <C-N> and <C-P> keys

"auto clear white space on save
autocmd BufWritePre * StripWhitespace

"<Leader>ig toggles indent guides

" default vim ctrl a will increment and ctrl x will decrement

" vim Surround
" normal mode
" ds -delete a surrounding
" cs -change a surrounding
" ys -add a surrounding
" yss -add a surrounding to the whole line
" ySs -add a surrounding to the whole line, place it on a new line + indent
" ySS -same as ySs
" visual mode
" s -in visual mode, add a surrounding
" S -invisual mose, add a surrounding but place text on a new line and indend
" Surroundings can be added with the same cs command, which takes a
" surrounding target, or with the ys command that takes a valid vim motion.
" special yss comand that applies a surrounding to the whole line, and ySS
" that applies the surrounding to the whole line, places the text on a new
" line and indents it.
" (hello world) ysi(' - ('hello world')
" hello world! ysiw) - hello (world)!
" deleting surroundings ds
" after ds command expects the surrounding target you want to delete.
" ',",`,(,),{,},[,],<,>, and a special 't' target for deleting the ineermost
" HTML tag
" 'hello world' - ds' -- hello world
" (123+4*56)/2 - ds( -- 123+4*56/2
" <div>foo</div> dst -- foo
" Surrounding can be changed with the cs command. takes a surrounding target
" and it also takes the surrounding replacement.
" more targets w for word, W for word + skip punctuation, s for sentence and p
" for paragraph
" "hello world" - cs"' -- 'hello world'
" "hello world" - cs"<q> -- <q>hello world</q>
" <div>foo</div> - cst<p> -- <p>foo</p>
" foo! - csw' -- 'foo'!
" foo! - csW' -- 'foo!'


" text wrap
:set tw=80
:set fo+=t
"gqq to break up a line if needed.
" shiftj will join the bottome line to the line the cursor is on.

" shift V to higlight and then > to indent the selected lines

set nobackup  "no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile  " no swap files

"Auto Pairs delete in pair input: foo[<BS>]
"input: {i} (press <CR> at i) output: {
"    i
"}

"Polyglot enable syntax
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
 \   '*': ['remove_trailing_lines', 'trim_whitespace'],
 \   'javascript': ['eslint', 'prettier'],
 \}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" set to 0 to disable fix files on save
"let g:ale_fix_on_save = 0
"leader key for prettier and ale
nmap <leader>d <Plug>(ale_fix)
set completeopt+=noinsert

" config add file
" config status
" config commit -m
" config push
" alias set up with bare git repo for .dotfiles

"-------- experimenting-----------
"
"set autoread "detect when a file is changed
"set textwidth=120


"searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
"clear results after search
nnoremap <silent> <C-L> :noh<CR><C-L>
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" error bells
set noerrorbells
set visualbell
"set t_vb=
"set tm=500

"set number " show line numbers
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set diffopt+=vertical
set laststatus=2 " show the satus line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
"set hidden " current buffer can be put into background
set showcmd " show incomplete commands
""set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
"set cmdheight=1 " command bar height
"set title " set terminal title
set showmatch " show matching braces
""set mat=2 " how many tenths of a second to blink

"" Tab control

set expandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set autoindent
set smartindent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
"set cindent
"autocmd VimEnter * set autoindent
"set shiftround " round indent to a multiple of 'shiftwidth'

"" code folding settings
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

"  shortcut to save
 nmap <leader>w :w<cr>

 "edit ~/.vim
 "
 "
 map <leader>ev :e! ~/.vimrc<cr>

 " scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" ALE
let g:ale_set_highlights = 0
let g:ale_change_sign_column_color = 0
"let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str = '✖'
let g:ale_echo_msg_warning_str = '⚠'
let g:ale_echo_msg_format = '%severity% %s% [%linter%% code%]'
let g:ale_completion_enabled = 1


let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1

"syntax enable
" make the highlighting of tabs and other non-text less annoying
"highlight SpecialKey ctermfg=19 guifg=#333333
"highlight NonText ctermfg=19 guifg=#333333

"set term=screen-256color
":syntax on
set nocompatible
" hack work around for css highlighting.  use Ctrl h, and then run Ctrl v. fixes
" highlighting and reverts colors back to how they should be
nnoremap <C-h> :syntax on <cr>
nnoremap <C-v> :source ~/.vimrc <cr>

set splitbelow
set splitright
""Max out the height of the current split
"ctrl + w _

""Max out the width of the current split
"ctrl + w |

""Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
""Swap top/bottom or left/right split
"Ctrl+W R

""Break out current window into a new tabview
"Ctrl+W T

""Close every window in the current tabview but the current one
"Ctrl+W o
