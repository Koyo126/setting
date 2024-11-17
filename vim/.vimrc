"vimの各種設定（"でコメントアウト）

set nocompatible "vi互換の動作を無効にする

" 画面表示の設定
"autocmd ColorScheme * highlight Normal ctermbg=none
"autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd BufNewFile,BufRead *.plt set filetype=gnuplot

colorscheme ron
"colorscheme molokai
set background=dark
"set t_Co=256
"let g:molokai_original = 1
"let g:rehash256 = 1

"nnoremap <S-k> 10<UP>
"nnoremap <S-j> 10<DOWN>
"nnoremap <S-h> 10<LEFT>
"nnoremap <S-l> 10<RIGHT>
"
"vnoremap <S-k> 10<UP>
"vnoremap <S-j> 10<DOWN>
"vnoremap <S-h> 10<LEFT>
"vnoremap <S-l> 10<RIGHT>

let fortran_free_source=1	" 固定形式を自由形式に変える
let fortran_more_precise=1
"let fortran_fold=1
"let fortran_fold_conditionals=1
"let fortran_fold_multilinecomments=1
"
"setl foldmethod=syntax

" 前にファイルを開いたときのカーソル位置に移動。
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

syntax on          			" 構文ハイライト
set number         			" 行番号を表示する
set ruler          			" 現在の行とカラム位置を表示 
set cursorline     			" カーソル行の背景色を変える
set laststatus=2   			" ステータス行を常に表示
set cmdheight=2    			" メッセージ表示欄を2行確保
set showmatch      			" 対応する括弧を強調表示
set showcmd	   				" 入力中のコマンドを表示する
set helpheight=999 			" ヘルプを画面いっぱいに開く
set tw=0					" 勝手に改行されない
set viminfo='20,\"20000      " vimの終了に伴うヤンク行制限の解除


" カーソル移動関連の設定
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

"==================================
" 文字入力関連の設定
"set expandtab
"set smartindent
"set autoindent	" インデント
"set tabstop=2	" タブ幅

" 文字入力関連の設定
set expandtab
set autoindent	" インデント
set tabstop=2	" タブ幅
"==================================

" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 検索/置換の設定
set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る

set visualbell t_vb= "ビープ音全てを無効にする
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない

"set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileencodings=utf-8
"set encoding=euc-jp "vim内部で用いる文字コード.文字化け時にいじる
set encoding=utf-8 "vim内部で用いる文字コード.文字化け時にいじる
"set guifont=MS_Gothic:h12:cSHIFTJIS "半角文字の設定
"set guifontwide=MS_Gothic:h12:cSHIFTJIS "全角文字の設定
