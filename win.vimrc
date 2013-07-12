"version 7.3

" 에디터 기본설정
"colorscheme torte
"colorscheme elflord
"colorscheme desert
filetype on

set backspace=start,indent
"set backspace=start,indent,eol
set autoindent          " 자동 들여쓰기
set smartindent        " 자동 들여쓰기
"set cindent             " C언어 자동 들여쓰기
set cb=unnamed
set backup
set backupdir=D:\vimbackup  
set incsearch
set writebackup
set ruler               " 커서가 항상보임
set showmode
"set tabstop=8
set tabstop=4
set shiftwidth=4
set sts=4              
set expandtab           " tab을 space로 입력
set history=100         " 명령어히스토리
set showcmd             " 완성중인 명령 표시
set magic               " 매직 기능 사용
set nosol                 " 여러가지 동작시 줄의 시작으로 자동 이동
set mps+=<:>            " 괄호 짝 <> 추가
set showmatch           " 괄호 위치 표시
set diffopt+=iwhite		" vimdiff 공백 무시
set tabpagemax=20       " 탭페이지 최대값
"set cursorline          " 현재라인 강조
set paste               " 붙여넣기시 자동들여쓰기 하지 않음
set wrap                " 자동줄바꿈

"source D:\vim\vim73\mswin.vim	"윈도우 단축키로 동작
"behave mswin			"복사 붙여넣기를 윈도우 단축키로 동작

"filet on               " 파일 종류 자동인식
"set nobacku
"set sw=4               " 탭 크기 설정
"set ts=4
"set ai					" always set autoindenting on
"set graphic
"set bs=2				" allow backspacing over everything in insert mode  
"set linebreak          " Don't wrap words by default 
"set textwidth=76       " 76번째 칸을 넘어가면 자동 줄바꿈
"set wrap               " 자동 줄바꿈 안함
"set nu                 " 줄번호 표시
"set sm                 " 추가된 괄호짝 보여주는 기능
"set viminfo='20,"50    " read/write a .viminfo file, don't store more than 50 lines of registers

" 검색 기능 설정
set scs                 "똑똑한 대소문자 구별기능 사용
set ignorecase          "검색시 대소문자 구별안함
set hlsearch	        "검색어 강조기능
set nowrapscan         "검색시 파일끝에서 처음으로 되돌리기 안함

"Font 설정
set guifont=Bitstream_Vera_Sans_Mono:h8:cANSI
"set guifont=Courier

set background=dark
win 100 60   			"가로 세로 크기조정
"set background=light   " 구문강조 기능
"set lines=60			" line 조정

" Syntax Highlighting 기능
syntax on				" Switch on syntax highlighting.

" 인코딩 관련
set fencs=ucs-bom,utf-8,cp949
"set encoding=utf-8
set fileencoding=utf-8

" 상태표시줄 
set statusline=%<[%{&ff},%{&fenc}]%y(%{strftime(\"%Y/%m/%d\ %H:%M\",getftime(expand(\"%:p\")))})%F%m\ %=\ [0x%B][%v,%l/%L][%p%%] 
set laststatus=2

highlight Normal guibg=black guifg=grey80
highlight Cursor gui=NONE guifg=bg guibg=lightcyan
highlight Visual gui=NONE guifg=bg guibg=lightyellow
highlight StatusLine guifg=White guibg=Blue gui=Bold cterm=Bold ctermfg=White ctermbg=Blue

" 한글로 입력 될때 커서 색깔의 변경 
if has('multi_byte_ime')
 hi Cursor guibg=cyan guifg=Black
 hi CursorIM guibg=white guifg=Black
endif

"============= ctags 설정 ===============
set tags=d:\github\iamroot-arm10b\tags

if version >= 500
func! Sts( )
    let st = expand("<cword>")
    exe "sts ".st
endfunc
nmap ,st :call Sts( )<CR>
    
func! Tj( )
    let st = expand("<cword>")
    exe "tj ".st
endfunc
nmap ,tj :call Tj( )<CR>
endif

"============= cscope 설정 ===============
"cscope DB 위치 설정, <home/code> 변경, 절대경로 사용
let s:ppp=getcwd()
if has("cscope")
    "set csprg=/d/Windows/system32/cscope   "cscope 위치 
    "set csprg=D:\Windows\Systme32\cscope.exe   "cscope 위치 
    set nocsverb                "verbose off
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out d:\github\iamroot-arm10b
	" else add database pointed to by environment
    else
        cs add d:\github\linux\cscope.out d:\github\linux
    endif
    set csverb                "verbose on
endif
set csto=0                  "cscope DB search first
set cst                     "cscope DB tag DB search
"nmap 추가하기

"============= NERD Tree 환경설정 =============
"let NERDTreeWinPos = "left"     "NERD Tree 위치 = 왼쪽
let NERDTreeWinPos = "right"     "NERD Tree 위치 = 오른쪽
let NERDTreeWinSize = 30
nmap <F9> :NERDTreeToggle<CR>
        "F9  Key = NERD Tree Toggling

"============ Source Explorer 환경설정 ==========
let g:SrcExpl_winHeight = 5         " SrcExpl 윈도우 높이 지정
let g:SrcExpl_refreshTime = 300     " refrech time = 500ms
let g:SrcExpl_jumpKey = "<ENTER>"   " 해당 definition 으로 jump
let g:SrcExpl_gobackKey = "<SPACE>" " back
let g:SrcExpl_isUpdateTags = 0      " tag file update = off
nmap <F8> :SrcExplToggle<CR>   
        "F8 Key = SrcExpl Toggling

nmap <C-H> <C-W>h               
        "왼쪽 창으로 이동
nmap <C-J> <C-W>j               
        "하단(preview)창으로 이동
nmap <C-K> <C-W>k               
        "상단 창으로 이동
nmap <C-L> <C-W>l               
        "오른쪽 창으로 이동

"============ Tag List 환경설정 ===============
"let Tlist_Ctags_cmd = "c:\\Windows\\System32\\ctags"        "ctags 프로그램 위치
let Tlist_Inc_Winwidth = 30          "window width change on
let Tlist_Exit_OnlyWindow = 0       "tag/file 선택 완료 시 taglist window close = off
let Tlist_Auto_Open = 0             "vim 시작시 window open = off
"let Tlist_Use_Right_Window = 0      "Tag List 위치 = 오른쪽
let Tlist_Use_Left_Window = 1      "Tag List 위치 = 왼쪽
nmap <F7> :TlistToggle<CR>
        "F7 Key = Tag List Toggling

" fold관련 Key mapping
"set foldmethod=marker
"set foldmarker={{{,}}}
map <F2> gf
	"Edit the file whose name is under or after the cursor.
map <F3> :nohlsearch<CR>
	"reset nohlsearch
map <F4> ]]v]}zf
	"{...} folding

map <F5> zM
	"close all folds
map <F6> zR
	"open all folds
"map <F7> :mkview<CR>
	"save the folds
"map <F8> :loadview<CR>		
	"load from saving folding file

map <F10> <c-w>_
	"Set current window height to highest possible
map <F11> ,tj
	"new open of ctag list
map <F12> ,st
	"split open of ctag list

" I like highlighting strings inside C comments
"  let c_comment_strings=1

"========= man page 설정 ==============
func! Man()
    let sm = expand("<cword>")
"    exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
    exe "!man -S ko:2:3:4:5:6:7:8 ".sm
endfunc
nmap ,ma :call Man()<CR><CR>

"set nohlsearch	" Switch on search pattern highlighting.

au BufNewFile,BufReadPost *.cpp,*.cc,*.hpp source $VIM\vim73\syntax\cpp.vim
au BufNewFile,BufReadPost *.cpp,*.cc,*.hpp set cindent
au BufNewFile,BufReadPost *.c,*.h source $VIM\vim73\syntax\c.vim
au BufNewFile,BufReadPost *.c,*.h set cindent
au BufNewFile,BufReadPost *.java source $VIM\vim73\syntax\java.vim
au BufNewFile,BufReadPost *.java set cindent
au BufNewFile,BufReadPost *.html,*.htm source $VIM\vim73\syntax\html.vim
au BufNewFile,BufReadPost *.html,*.htm set smartindent
au BufNewFile,BufReadPost *.pc,*.cp,*.auto source $VIM\vim73\syntax\esqlc.vim
au BufNewFile,BufReadPost *.pc,*.cp,*.auto set cindent
"au BufNewFile,BufReadPost *.git/COMMIT_EDITMSG set fileencoding=UTF-8

au VimLeave * set laststatus=0

au BufNewFile,BufReadPost *.txt source $VIM\vim73\syntax\natural.vim
au BufNewFile,BufReadPost *.txt set nocindent
