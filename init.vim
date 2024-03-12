let mapleader=" "

call plug#begin('~/.local/share/nvim/plugged')
" Plugins
Plug 'avneesh0612/react-nextjs-snippets'
Plug 'crusoexia/vim-monokai'
Plug 'p00f/nvim-ts-rainbow'
Plug 'preservim/nerdtree'
" Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/nvim-treesitter', {'commit': '9bfaf62e42bdcd042df1230e9188487e62a112c0'}

Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'romgrk/barbar.nvim'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/jsonc.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'voidekh/kyotonight.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'techtuner/aura-neovim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim' 
Plug 'sainnhe/gruvbox-material'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'tribela/vim-transparent'

" Agrega otros temas aquí si los necesitas
Plug 'EdenEast/nightfox.nvim' 
Plug 'joshdick/onedark.vim'
Plug 'Mofiqul/vscode.nvim'
call plug#end()

" Configuración global
set termguicolors
set background=dark
set encoding=utf-8
set expandtab
set sw=2
set ts=2
set sts=2
set rnu
set shiftwidth=2 
set softtabstop=2

"fix bug coc
source $HOME/.config/nvim/coc-fix-bug.vim
let g:indentLine_enabled = 1


"
let g:python3_host_prog = '/usr/bin/python3'

" Configuración específica para JSX y TypeScript




" Mapeos
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :TSEnable highlight<CR>
nmap <Leader>gs :CocSearch
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <Leader>py :CocCommand prettier.formatFile<CR>
nmap <Leader>vv :vsplit<CR>
nmap <Leader>ss :split<CR>
nmap <Leader>cb :BufferClose<CR>
nmap <Leader>ca :BufferCloseAllButCurrent<CR>
noremap <Leader>nv :botright vnew <Bar> :terminal<cr>
noremap <Leader>nh :botright new <Bar> :terminal<cr>

" Configuración de Prettier
" au FileType css,javascript,javascriptreact,typescript,typescriptreact,vim,python let g:prettier#exec_cmd_path = '/usr/bin/prettier'
" autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.py,*.vim :CocCommand prettier.formatFile



" Configuración adicional de Treesitter si es necesario
" Configuraciones de indentLine
let g:indentLine_char = '|'
" let g:indentLine_bgcolor_gui = '#fe0000'
highlight IndentLine guibg=#4507ac 


" Configuraciones opcionales de barbar

nnoremap <Leader>1  :BufferGoto 1<CR>
nnoremap <Leader>2  :BufferGoto 2<CR>
nnoremap <Leader>3  :BufferGoto 3<CR>
nnoremap <Leader>4  :BufferGoto 4<CR>
nnoremap <Leader>5  :BufferGoto 5<CR>
nnoremap <Leader>6  :BufferGoto 6<CR>
nnoremap <Leader>7  :BufferGoto 7<CR>
nnoremap <Leader>8  :BufferGoto 8<CR>
nnoremap <Leader>9  :BufferGoto 9<CR>

" Configuraciones obligatorias


colorscheme nightfox


" augroup RectangularCursor
"   autocmd!
"   autocmd InsertEnter * set guicursor=^:ver100,i-ci:ver25,r-cr:hor20,o:hor50
"   autocmd InsertLeave * set guicursor=
" augroup END

 autocmd InsertEnter * set guicursor=

"configuraciones de NERDTreeCustom
" Habilitar iconos para NERDTree



"" Habilitar iconos de vim-devicons
" let g:NERDTreeShowBookmarks = 1



" Configuración de Lightline
set laststatus=2
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \        }
