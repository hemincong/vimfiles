" many plug-ins needs to know where python interpreter is
if has('win32')
	let g:python_exe = 'd:\python27.32\python.exe'
endif

if !exists('g:win_tools_dir_list')
	let g:win_tools_dir_list = [
		\'D:\tools',
		\'S:\ruiheng\tools',
		\]
endif

"if has('gui_running')
	"colo darkblue
"else
"endif

" for 'session' plugin
let g:session_autosave = 'yes'
if has('win32')
	let g:session_directory = 's:\ruiheng\vimfiles\sessions'
endif

" for vimwiki plugin
let s:wiki_1 = {}
if has('win32')
	let s:wiki_1.path = 'z:/git/vimwiki/default'
else
	let s:wiki_1.path = '~/vimwiki/default'
endif

let g:vimwiki_list = [s:wiki_1]

syn on
set ai
set bs=2
"set showmatch
set expandtab
set shiftwidth=4
set tabstop=4
set cursorline
set number

"set ignorecase
"set hls
"set helplang=cn
"set foldmethod=syntax

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
     set fileencoding=chinese
else
     set fileencoding=utf-8
endif

language messages zh_CN.utf-8

colorscheme koehler
set guioptions-=m
set guioptions-=T
filetype plugin on
filetype indent on
syntax enable
colorscheme solarized

"if has('gui_running')
    "set background=light
"else
    "let g:solarized_termcolors=256
    "set background=dark
"endif
