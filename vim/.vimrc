execute pathogen#infect()
syntax on
filetype plugin indent on
"set runtimepath^=~/.vim/bundle/ctrlp.vim

"colorscheme from select/bundle/colors
colorscheme molokai
"colorscheme monokai-phoenix
"tab size"
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

"disable swap file"
set noswapfile 

"cursor -v-h"
set cursorline
"set cursorcolumn!


"dracula theme
"color dracula

"line number
set nu

call plug#begin()
Plug 'StanAngeloff/php.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim' 	
"Plug 'prettier/vim-prettier', {'do': 'yarn install','for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json','graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim
"vundle start
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dracula/vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mattn/emmet-vim'
Bundle 'zhaocai/GoldenView.Vim'
""Bundle 'wellle/tmux-complete.vim'
Bundle 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'itchyny/lightline.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()
"vundle end
"cursor - cursor line color set 
hi Cursor ctermbg=15 ctermfg=8

"nerdtree shortcut
map <C-g> :NERDTreeToggle<CR>      
imap <C-g> <esc>:NERDTreeToggle<CR>      

let g:NERDTreeWinSize=22
"nerdtree shortcut end
""" nerdtree-plugin
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" nerdtree-plugin end
"FZF start
map <C-f> :FZF<CR>      
imap <C-f> <esc>:FZF<CR>      

"FZF end

"bottom bar -lighthline-start
set laststatus=2

"bottom bar -lighthline-end

"commenter
nmap // <leader>c<space>
vmap // <leader>c<space>

"emmet start"
"enable in different mode"
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

"enable just for html/css"

""let g:user_emmet_install_global =  0
""autocmd FileType html,css,php,js,jsx EmmetInstall
"shortcut"
let g:user_emmet_setting = {'javascript.jsx':{'extends':'jsx'}}

"emmet end"

"ale start"
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"ale setting"
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
""let g:ale_lint_on_enter = 0 " Less distracting when opening a new file



" Enable completion where available.
" " This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" Fix files with prettier, and then ESLint.
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let b:ale_fixers = ['prettier']
"errors"
let g:ale_sign_warning = '>>'



" Set this in your vimrc file to disabling highlighting
" let g:ale_set_highlights = 0
""""""""""""""""""""""""""""""""""""""""""""

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1


" ale end"

"vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1


"end@
"js lib syntax start"

autocmd BufReadPre *.js let b:javascript_lib_use_jquery=1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore=0
autocmd BufReadPre *.js let b:javascript_lib_use_backbone=0
autocmd BufReadPre *.js let b:javascript_lib_use_prelude=0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs=0
autocmd BufReadPre *.js let b:javascript_lib_use_angularui=0
autocmd BufReadPre *.js let b:javascript_lib_use_flux=1
autocmd BufReadPre *.js let b:javascript_lib_use_react=1
autocmd BufReadPre *.js let b:javascript_lib_use_requirejs=0
autocmd BufReadPre *.js let b:javascript_lib_use_sugar=0
autocmd BufReadPre *.js let b:javascript_lib_use_jasmine=0
autocmd BufReadPre *.js let b:javascript_lib_use_chai=0
autocmd BufReadPre *.js let b:javascript_lib_use_handlebars=0
autocmd BufReadPre *.js let b:javascript_lib_use_ramda=0
autocmd BufReadPre *.js let b:javascript_lib_use_vue=0
autocmd BufReadPre *.js let b:javascript_lib_use_d3=0
autocmd BufReadPre *.js let b:javascript_lib_use_tape=0


"js lib snytax end"

"jsx highlight start"
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

"jsx highlight end"

"tag
let g:mta_matchparent_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript':1,
    \ 'jsx':1,
    \}


"end@
"syntastic start

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_aggregate_errors = 1

"syntastic end

"test script
"insert mode end-start line keybinding
imap <C-e> <esc>$i<right>
imap <C-s> <esc>0i<left>

"normal mode end-star keybinding
map <C-e> $
map <C-s> 0

"insert mode +5/-5 line keybindingy
imap <C-j> <esc> :+5 <CR> i
imap <C-k> <esc> :-5 <CR> i

"normal  mode +5/-5 line keybindingy
map <C-j> :+5 <CR>
map <C-k> :-5 <CR>

"dublicate line 

imap <C-d> <Esc> yypi
map <C-d> yyp

"arrow move

"arrow insert mode +5/-5 line keybindingy
imap <C-down> <esc> :+5 <CR> i
imap <C-up> <esc> :-5 <CR> i

"arrow normal  mode +5/-5 line keybindingy
map <C-down> :+5 <CR>
map <C-up> :-5 <CR>

"

nnoremap <C-S-down> :m .+1<CR>==
nnoremap <C-S-up>    :m .-2<CR>==

inoremap <C-S-down>  <Esc>:m .+1<CR>==gi
inoremap <C-S-up>    <Esc>:m .-2<CR>==gi


"tab next-previous
imap <C-S-left> <esc> :tabprevious <CR>
imap <C-S-right> <esc> :tabNext <CR>

map <C-S-left> :tabprevious <CR>
map <C-S-right> :tabNext <CR>


"emmet ctrl-a

imap <C-a> <C-y>,

inoremap <Nul> <C-x><C-o>
imap <C-space> <C-n>



"cursorline
set cursorline
autocmd InsertEnter * highlight CursorLine guibg=#040050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#044440 guifg=fg
