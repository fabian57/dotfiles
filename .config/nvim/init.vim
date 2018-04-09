""" Plugins
call plug#begin('~/.local/share/nvim/plugged')

"" Aesthetics
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'

"" Functionalities
" Git wrapper
Plug 'tpope/vim-fugitive'
" Vim defaults
Plug 'tpope/vim-sensible'
" Displays tags in a window
" Stopped working the very next day I installed it... Why? What did I do to anger you?
"Plug 'majutsushi/tagbar'
" Filetree
Plug 'scrooloose/nerdtree'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-zsh'
Plug 'zchee/deoplete-docker'
" Linting and make tool
Plug 'benekastah/neomake'
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

call plug#end()


""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python3')


""" Coloring
syntax on
color dracula
"let &colorcolumn="80,".join(range(120,999),",")
"highlight ColorColumn ctermbg=235 guibg=#2c2d27
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none


" Opaque Background (Comment out to use terminal's profile)
"set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE


""" Other configuration
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
set laststatus=2
set updatetime=500





""" Plugin Configuration
" Nerdtree
let NerdTreeShowHidden=1

" Airline
let g:airline_powerline_fonts=1
let g:airline_section_z=' %{strftime("%-I:%M %p")}'
let g:airline_section_warning=''
let g:airline#extensions#tabline#enabled=1

" Deoplete
set runtimepath+=~/.local/share/nvim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup=1
" Disable documentation window
set completeopt-=preview

" Supertab
let g:SuperTabDefaultCompletionType="<C-n>"

" indentLine
let g:indentLine_char='▏'
let g:indentLine_color_gui='#f0f0f0'

" TagBar
let g:tagbar_width=30


""" Filetype-Specific Configurations

" HTML, CSS, js, Markdown
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2


""" Custom Functions
" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction


""" Keybindings
" Set up leaders
let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
"nmap <leader>w :TagbarToggle<CR>
"nmap \ <leader>q<leader>w
nnoremap <C-b> :w<CR>:Neomake<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t <C-w>s<C-w>j :terminal<CR>:res 10<CR>i
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
tnoremap <Esc> <C-\><C-n>
