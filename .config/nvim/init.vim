""" Plugins
call plug#begin('~/.local/share/nvim/plugged')

"" Aesthetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'dracula/vim'
Plug 'nightsense/snow'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

"" Functionalities
" Vim defaults
Plug 'tpope/vim-sensible'
" Filetree
Plug 'scrooloose/nerdtree'
" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" C-family
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/deoplete-clangx'
" Python
Plug 'zchee/deoplete-jedi'
"Plug 'Valloric/YouCompleteMe', { 'do': ' ./install.py --clang-completer --system-libclang' } 
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" Completion with Tab
Plug 'ervandew/supertab'
" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'
" Display indention levels
Plug 'Yggdroot/indentLine'
" Show colors
Plug 'chrisbra/Colorizer'
" HTML/CSS helper
Plug 'mattn/emmet-vim'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()




""" Other configuration
filetype plugin indent on
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
set laststatus=2
set updatetime=500
set number
set relativenumber


""" Plugin Configuration
" Nerdtree
let NerdTreeShowHidden=1

" Airline
let g:airline_powerline_fonts=1
let g:airline_section_z=' %{strftime("%-I:%M %p")}'
let g:airline_section_warning=''
let g:airline#extensions#tabline#enabled=1


" indentLine
let g:indentLine_char='▏'
let g:indentLine_color_gui='#f0f0f0'

" deoplete
let g:deoplete#enable_at_startup=1
call deoplete#custom#var('clangx', 'clang_binary', '/usr/lib/libclang.so.7')

" YCM
"let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_insertion = 1

" Supertab
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabDefaultCompletionType = "<c-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

""" Custom Functions
" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme='dracula'
    color dracula
endfunction

" Seoul256 Mode (Light)
function! ColorSeoul256Light()
    let g:airline_theme='silver'
    color seoul256-light
    set background=light
endfunction

" Seoul256 Mode (Dark)
function! ColorSeoul256Dark()
    let g:airline_theme='silver'
    color seoul256
    set background=dark
endfunction

" Snow Mode (Light)
function! ColorSnowLight()
    let g:airline_theme='snow_light'
    set background=light
    colorscheme snow
endfunction

" Snow Mode (Dark)
function! ColorSnowDark()
    let g:airline_theme='snow_dark'
    set background=dark
    colorscheme snow
endfunction

""" Coloring
syntax on
call ColorDracula()
" Transparent Background (For i3 and compton)
"highlight Normal ctermbg=NONE
"highlight LineNr ctermbg=NONE



""" Keybindings
" Set up leaders
let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t <C-w>s<C-w>j :terminal<CR>:res 10<CR>i
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
tnoremap <Esc> <C-\><C-n>
" Change colorscheme
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256Light()<CR>
nmap <leader>e3 :call ColorSeoul256Dark()<CR>
nmap <leader>e4 :call ColorSnowLight()<CR>
nmap <leader>e5 :call ColorSnowDark()<CR>

" Compile rmarkdown file into pdf and refresh mupdf 
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%', 'pdf_document')"<space>\|<space>R<space>--vanilla &> /dev/null; pkill -HUP mupdf<enter><enter>
