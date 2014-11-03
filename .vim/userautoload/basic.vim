" クリップボード共有
set clipboard+=unnamedplus,unnamed

" 環境設定系
set title "編集中のファイル名を表示
set expandtab
set tabstop=4 "インデントをスペース4つ分に設定
set softtabstop=4
set shiftwidth=4
set smartindent "オートインデント
" シンタックスハイライト
syntax on
" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf-8
" スクロールする時に下が見えるようにする
set scrolloff=5
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" バックスペースで各種消せるようにする
set backspace=indent,eol,start
" ビープ音を消す
set vb t_vb=
"set novisualbell
" OSのクリップボードを使う
set guioptions+=a  "ビジュアルモードで選択したテキストがクリップボードにはいる
"set clipboard=unnamedp,autoselect
" 行番号を表示
set number
" 右下に表示される行・列の番号を表示する
set ruler
" compatibleオプションをオフにする
"set nocompatible
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 対応括弧に<と>のペアを追加
"set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
" 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" インデントをshiftwidthの倍数に丸める
set shiftround
" 補完の際の大文字小文字の区別しない
set infercase
" 文字がない場所にもカーソルを移動できるようにする
set virtualedit=all
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
"set hlsearch
" コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" マウスモード有効
set mouse=a
" xtermとscreen対応
set ttymouse=xterm2
" コマンドを画面最下部に表示する
set showcmd
"編集中のファイル名表示"
set title

"フォント設定 Linux"
"set guifont=Dejavu\ sans\ Mono\ 14


"guifont	list of font names to be used in the GUI
"set gfn=Roboto\ Bold\ 11

"フォント設定 Windows"
"set guifont=MS_Gothic:h13

" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化   

" YRShowコマンドを使い易くする
nnoremap <silent> <F7> :YRShow<CR>   "F7で実行
let g:yankring_max_history = 10   "記録履歴10件
let g:yankring_window_height = 13    "ウィンドウサイズ

"括弧の自動入力
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>
vnoremap { "zdi^V{<C-R>z<ESC>
vnoremap [ "zdi^V[<C-R>z<ESC>
vnoremap ( "zdi^V(<C-R>z<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>}})]}}

"補完ウィンドウの設定 :help completeopt
set completeopt=menuone

"起動時に有効
let g:neocomplcache_enable_at_startup = 1

"ポップアップメニューで表示される候補の数。初期値は100
let g:neocomplcache_max_list = 20

"自動補完を行う入力数を設定。初期値は2
let g:neocomplcache_auto_completion_start_length = 2

"手動補完時に補完を行う入力数を制御。値を小さくすると文字の削除時に重くなる
"let g:neocomplcache_manual_completion_start_length = 3
"バッファや辞書ファイル中で、補完の対象となるキーワードの最小長さ。初期値は4。
let g:neocomplcache_min_keyword_length = 4
"シンタックスファイル中で、補完の対象となるキーワードの最小長さ。初期値は4。
let g:neocomplcache_min_syntax_length = 4
"1:補完候補検索時に大文字・小文字を無視する
let g:neocomplcache_enable_ignore_case = 1
"入力に大文字が入力されている場合、大文字小文字の区別をする
let g:neocomplcache_enable_smart_case = 1

"DTと入力するとD*T*と解釈され、DateTime等にマッチする。
let g:neocomplcache_enable_camel_case_completion = 0
"m_sと入力するとm*_sと解釈され、mb_substr等にマッチする。
let g:neocomplcache_enable_underbar_completion = 0

"キャッシュディレクトリの場所
"RamDiskをキャッシュディレクトリに設定
"if has('win32')
"   let g:neocomplcache_temporary_dir = 'E:/.neocon'
"elseif has('macunix')
"   let g:neocomplcache_temporary_dir = '/Volumes/RamDisk/.neocon'
"else
"   let g:neocomplcache_temporary_dir = '/tmp/.neocon'
"endif

"シンタックス補完を無効に
"let g:neocomplcache_plugin_disable = {
"   \ 'syntax_complete' : 1,
"   \ }

"補完するためのキーワードパターンを指定
"if !exists('g:neocomplcache_keyword_patterns')
"   let g:neocomplcache_keyword_patterns = {}
"endif


""indet set
let g:indent_guides_enable_on_vim_startup = 1      "自動起動
"let g:indent_guides_color_change_percent = 25      
let g:indent_guides_guide_size = 1                 "ガイドの幅
let g:indent_guides_auto_colors = 0                "自動からーを無効にして手動設定する
let g:indent_guides_color_change_percent = 20      "ハイライト色変化の幅
let g:indent_guides_guide_size = &tabstop          "ガイド幅をインデント幅に合わせる
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=9
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=20
 

" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
  
" デフォルトでツリーを表示させる
autocmd VimEnter * execute 'NERDTree'

"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
"
""let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'
 "
""if has('syntax')
""  augroup InsertHook
 """"   autocmd!
   "" autocmd InsertEnter * call s:StatusLine('Enter')
""    autocmd InsertLeave * call s:StatusLine('Leave')
""  augroup END
""endif
""
""let s:slhlcmd = ''
""function! s:StatusLine(mode)
""  if a:mode == 'Enter'
""    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
""    silent exec g:hi_insert
""  else
""    highlight clear StatusLine
""    silent exec s:slhlcmd
""  endif
""endfunction
""
""function! s:GetHighlight(hi)
""  redir => hl
""  exec 'highlight '.a:hi
""  redir END
""  let hl = substitute(hl, '[\r\n]', '', 'g')
""  let hl = substitute(hl, 'xxx', '', '')
""  return hl
""endfunction