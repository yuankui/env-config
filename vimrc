syntax   enable                  "开启语法高亮显示
filetype plugin on               "开启文件类型插件
filetype indent on               "为特定文件类型载入相关缩进文件

"显示设置
set    nocompatible              "不用vi的键盘模式，而用vim自己的
set    syntax=on                 "语法高亮显示
" set    nu                        "显示行行号
set    showcmd                   "显示命令
set    showmatch                 "显示括号匹配
set    fileencodings=utf-8,gbk,gb18030,utf-16,big5
set    hid                       "可以在没有保存的情况下切换buffer
set    nowb                      "
set    nobackup                  "关闭备份
set    noswapfile                "不使用swp文件，注意，错误后无法恢复
set    ai                        "自动缩进
set    si                        "智能缩进
set    cindent                   "C++风格缩进
set    autoread                  "当文件在外部修改时，自动读取
" set    mouse=a                   "可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set    selection=exclusive
set    selectmode=mouse,key
set    enc=gbk                 "编码设置
set    fencs=utf-8,gbk,gb2312,gb18030
set    langmenu=zh_CN.UTF-8     "语言设置
set    helplang=cn               "帮助语言
" set    cursorline                "高亮显示当前行
set    ruler                     "在右下角显示光标位置
set    backspace=2               "使退格键可以使用
" set    whichwrap+=<,>,h,l        "允许退格键和光标键跨越行边界
set    showmatch                 "打开匹配模式
set    background=dark           "黑色背景
set    hlsearch                  "关闭搜索结果高亮显示
set    incsearch                 " 查找book时，当输入/b时会自动找到
set    incsearch                 " 开启实时搜索功能"""
hi     include                    term=underline cterm=bold ctermfg=yellow
hi     Define                     term=underline cterm=bold ctermfg=yellow

"格式设置
set    linebreak                 "整词换行
set    autoindent                "自动对齐
set    wrap                      "自动换行
set    smartindent               "智能对齐
set    noexpandtab               "不要用空格代替制表符

"tab转化为4个字符
set    expandtab
set    smarttab
set    shiftwidth=4
set    tabstop=4

"编程设置
set tags+=~/.vim/tags/stl/stltags
set tags+=~/.vim/tags/project/projtags

"DoxygenToolkit设置
"常用命令：:Dox  :DoxAuthor  :DoxLic
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_licenseTag="Recommendation"

let g:DoxygenToolkit_authorName="zijiang.gqy"
let s:licenseTag = "---------------------------------------------\<enter>\<enter>Copyright(C) "
let s:licenseTag = s:licenseTag . "www.etao.com "
let s:licenseTag = s:licenseTag . "All right reserved\<enter>\<enter>---------------------------------------------"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

map <F2>    1G=G <ESC>''
inoremap <F2> <ESC>1G=G <ESC>''<ESC>i

"打开关闭TagList
noremap <F3>  :TlistToggle <CR>
imap    <F3> <ESC>  :TlistToggle <CR>

"NERDTree设置
noremap <F4>  :NERDTreeToggle <CR>
imap <F4> <ESC>  :NERDTreeToggle <CR>
let NERDTreeSortOrder=['/.cpp$','/.c$','/.h$', '*'] "排序
let NERDTreeCaseSensitiveSort=0        "不分大小写排序
let NERDTreeWinSize=30                 "设置宽度
let NERDTreeHighlightCursorline=1

noremap <F5> <c-w><c-w>                "切换工作区
nmap <F6> :tabp<CR>                    "切换到上一个tab
nmap <F7> :tabn<CR>                    "切换到下一个tab
map <F8> :%s/\s*$//g<cr>:noh<cr>''
map <F9> :Dox<CR>
map <F10> :!
set pastetoggle=<F11> 

"创建tags
noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/project/projtags<CR>
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/project/projtags<CR>



" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview



" 状态栏
set laststatus=2      " 总是显示状态栏
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
set statusline=[%n]\file:\%f\\|\dir:\%{CurDir()}\%=\%l,%c\ %p%%



set nu
