"version 7.3

" ������ �⺻����
"colorscheme torte
"colorscheme elflord
"colorscheme desert
filetype on

set backspace=start,indent
"set backspace=start,indent,eol
set autoindent          " �ڵ� �鿩����
set smartindent        " �ڵ� �鿩����
"set cindent             " C��� �ڵ� �鿩����
set cb=unnamed
set backup
set backupdir=D:\vimbackup  
set incsearch
set writebackup
set ruler               " Ŀ���� �׻���
set showmode
"set tabstop=8
set tabstop=4
set shiftwidth=4
set sts=4              
set expandtab           " tab�� space�� �Է�
set history=100         " ��ɾ������丮
set showcmd             " �ϼ����� ��� ǥ��
set magic               " ���� ��� ���
set nosol                 " �������� ���۽� ���� �������� �ڵ� �̵�
set mps+=<:>            " ��ȣ ¦ <> �߰�
set showmatch           " ��ȣ ��ġ ǥ��
set diffopt+=iwhite		" vimdiff ���� ����
set tabpagemax=20       " �������� �ִ밪
"set cursorline          " ������� ����
set paste               " �ٿ��ֱ�� �ڵ��鿩���� ���� ����
set wrap                " �ڵ��ٹٲ�

"source D:\vim\vim73\mswin.vim	"������ ����Ű�� ����
"behave mswin			"���� �ٿ��ֱ⸦ ������ ����Ű�� ����

"filet on               " ���� ���� �ڵ��ν�
"set nobacku
"set sw=4               " �� ũ�� ����
"set ts=4
"set ai					" always set autoindenting on
"set graphic
"set bs=2				" allow backspacing over everything in insert mode  
"set linebreak          " Don't wrap words by default 
"set textwidth=76       " 76��° ĭ�� �Ѿ�� �ڵ� �ٹٲ�
"set wrap               " �ڵ� �ٹٲ� ����
"set nu                 " �ٹ�ȣ ǥ��
"set sm                 " �߰��� ��ȣ¦ �����ִ� ���
"set viminfo='20,"50    " read/write a .viminfo file, don't store more than 50 lines of registers

" �˻� ��� ����
set scs                 "�ȶ��� ��ҹ��� ������� ���
set ignorecase          "�˻��� ��ҹ��� ��������
set hlsearch	        "�˻��� �������
set nowrapscan         "�˻��� ���ϳ����� ó������ �ǵ����� ����

"Font ����
set guifont=Bitstream_Vera_Sans_Mono:h8:cANSI
"set guifont=Courier

set background=dark
win 100 60   			"���� ���� ũ������
"set background=light   " �������� ���
"set lines=60			" line ����

" Syntax Highlighting ���
syntax on				" Switch on syntax highlighting.

" ���ڵ� ����
set fencs=ucs-bom,utf-8,cp949
"set encoding=utf-8
set fileencoding=utf-8

" ����ǥ���� 
set statusline=%<[%{&ff},%{&fenc}]%y(%{strftime(\"%Y/%m/%d\ %H:%M\",getftime(expand(\"%:p\")))})%F%m\ %=\ [0x%B][%v,%l/%L][%p%%] 
set laststatus=2

highlight Normal guibg=black guifg=grey80
highlight Cursor gui=NONE guifg=bg guibg=lightcyan
highlight Visual gui=NONE guifg=bg guibg=lightyellow
highlight StatusLine guifg=White guibg=Blue gui=Bold cterm=Bold ctermfg=White ctermbg=Blue

" �ѱ۷� �Է� �ɶ� Ŀ�� ������ ���� 
if has('multi_byte_ime')
 hi Cursor guibg=cyan guifg=Black
 hi CursorIM guibg=white guifg=Black
endif

"============= ctags ���� ===============
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

"============= cscope ���� ===============
"cscope DB ��ġ ����, <home/code> ����, ������ ���
let s:ppp=getcwd()
if has("cscope")
    "set csprg=/d/Windows/system32/cscope   "cscope ��ġ 
    "set csprg=D:\Windows\Systme32\cscope.exe   "cscope ��ġ 
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
"nmap �߰��ϱ�

"============= NERD Tree ȯ�漳�� =============
"let NERDTreeWinPos = "left"     "NERD Tree ��ġ = ����
let NERDTreeWinPos = "right"     "NERD Tree ��ġ = ������
let NERDTreeWinSize = 30
nmap <F9> :NERDTreeToggle<CR>
        "F9  Key = NERD Tree Toggling

"============ Source Explorer ȯ�漳�� ==========
let g:SrcExpl_winHeight = 5         " SrcExpl ������ ���� ����
let g:SrcExpl_refreshTime = 300     " refrech time = 500ms
let g:SrcExpl_jumpKey = "<ENTER>"   " �ش� definition ���� jump
let g:SrcExpl_gobackKey = "<SPACE>" " back
let g:SrcExpl_isUpdateTags = 0      " tag file update = off
nmap <F8> :SrcExplToggle<CR>   
        "F8 Key = SrcExpl Toggling

nmap <C-H> <C-W>h               
        "���� â���� �̵�
nmap <C-J> <C-W>j               
        "�ϴ�(preview)â���� �̵�
nmap <C-K> <C-W>k               
        "��� â���� �̵�
nmap <C-L> <C-W>l               
        "������ â���� �̵�

"============ Tag List ȯ�漳�� ===============
"let Tlist_Ctags_cmd = "c:\\Windows\\System32\\ctags"        "ctags ���α׷� ��ġ
let Tlist_Inc_Winwidth = 30          "window width change on
let Tlist_Exit_OnlyWindow = 0       "tag/file ���� �Ϸ� �� taglist window close = off
let Tlist_Auto_Open = 0             "vim ���۽� window open = off
"let Tlist_Use_Right_Window = 0      "Tag List ��ġ = ������
let Tlist_Use_Left_Window = 1      "Tag List ��ġ = ����
nmap <F7> :TlistToggle<CR>
        "F7 Key = Tag List Toggling

" fold���� Key mapping
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

"========= man page ���� ==============
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
