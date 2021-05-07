
"========================NERDTree============================"


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.

autocmd VimEnter * NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
"Plugin devicn

" enable custom folder/directory glyph exact matching
" (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'
" change the default dictionary mappings for file extension matches

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" change the default dictionary mappings for exact file node matches

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" add or override individual additional filetypes

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
" add or override pattern matches for filetypes
" these take precedence over the file extensions

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'
"specify OS to decide an icon for unix fileformat (not defined by default)

" enable custom folder/directory glyph exact matching
" (enabled by default when g:WebDevIconsUnicodeDecorateFolderNodes is set to 1)
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = 'ƛ'
" change the default dictionary mappings for file extension matches

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" change the default dictionary mappings for exact file node matches

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" add or override individual additional filetypes

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
" add or override pattern matches for filetypes
" these take precedence over the file extensions

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'

"this is useful for avoiding unnecessary system() call. see #135 for further details.
"let g:WebDevIconsOS = 'Darwin'
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"neoformat
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"================================airline seting==============
"
let g:airline_theme='dracula'
"======================
"
let g:deoplete#enable_at_startup = 1
"
"========================Seting dasar==============================

syntax enable   " Enables syntax highlighing
set number  "Line numbers
set wrap " Display long lines as just one line
set encoding=utf-8  " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
set ruler  "Show the cursor position all the time
set iskeyword+=- " treat dash separated words as a word text object"
"set splitbelow  " Horizontal splits will automatically be below
"set splitright  " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set mouse=a  " Enable your mous
set conceallevel=0                      " So that I can see `` in markdown files
set syntax
"set tabstop=2 " Insert 2 spaces for a tab
set shiftwidth=2 " Change the number of space characters inserted for indentation
set smarttab  " Makes tabbing smarter will realize you have 2 vs 4
set smartindent " Makes indenting smart
set autoindent   " Good auto indent
"set laststatus=1  " Always display the status line
"set background=dark                     " tell vim what the background color looks like
"set showtabline=2    " Always show tabs
set formatoptions-=cro                  " Stop newline continution of comments
set title
let g:mapleader = "\<Space>"
set clipboard=unnamedplus    " Copy paste between vim and everything else

set ruler
set laststatus=1           " Always show statusline, even if only 1 window.
set ls=1                    " allways show status line:w


"==================Pretier=====================
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"------------------------split-----------
"
let g:split_term_default_shell = "bash"

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


"=================================dasboard=========
"
let g:mapleader="\<Space>"
let g:dashboard_default_executive ='fzf'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

"eslint prettier
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1
