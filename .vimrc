" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'tomasr/molokai'
NeoBundle 'bling/vim-airline.git'
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" シンタックスハイライトを有効化
syntax on
colorscheme molokai

" yank（コピー）した内容をクリップボードに共有
set clipboard=unnamed

" 検索内容をハイライト
set hlsearch

" 検索で大小文字の違いを無視
set ignorecase

" タブ入力を2つの半角スペースに
set expandtab
set tabstop=2
set shiftwidth=2

" 改行時の自動インデント有効化
set autoindent

" インクリメンタルサーチの有効化
set incsearch

" 行番号の表示
set number

set laststatus=2
