if has('python3')
	silent! python3 1
endif

colorscheme badwolf
" syntax enable
" set t_Co=256
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

set nu
set tabstop=2 shiftwidth=2 softtabstop=2 smarttab
set cursorline			" highlight current line "
set smartindent
set autoindent
set noet

call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Raimondi/delimitMate'																	"自动括号补全
Plug 'majutsushi/tagbar'																		"标签列表
Plug 'ConradIrwin/vim-bracketed-paste'											"插入模式下粘贴内容，不会有任何变形 :set paste
Plug 'Shougo/unite.vim'																			"文件或Buffer列表
Plug 'Lokaltog/vim-easymotion'															"快速移动,杀手锏，跳转到光标后任意位置
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'pearofducks/ansible-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Initialize plugin system
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

nmap <F8> :TagbarToggle<CR>
let mapleader=","
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_auto_type_info = 1
let g:go_def_mode = 'gopls'
let g:go_gocode_propose_builtins = 1                                                                                                           
let g:go_gocode_unimported_packages = 1
augroup go
  autocmd!
  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
	" golang 方法自动补全
	autocmd FileType go nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
	autocmd FileType go nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
	autocmd FileType go nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)
  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)
  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)
  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)
  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)
  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

" 允许隐藏被修改过的 buffer
set hidden
" normal 模式下使用 bl 列出 Buffer 列表
nnoremap <silent> bl :ls<CR>
" normal 模式下使用 bo 打开一个新 Buffer
nnoremap <silent> bo :enew<CR>
" normal 模式下使用 bn 切换到下一个 Buffer
nnoremap <silent> bn :bnext<CR>
" normal 模式下使用 bn 切换到上一个 Buffer
nnoremap <silent> bp :bprevious<CR>
" normal 模式下使用 bd 关闭当前 Buffer
nnoremap <silent> bd :bdelete<CR>
" 允许 airline 在顶部显示 Buffer 列表
let g:airline#extensions#tabline#enabled=1
" 显示 buffer 编号，方便切换
let g:airline#extensions#tabline#buffer_nr_show=1
