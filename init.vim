syntax on
filetype plugin indent on

set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'mattn/emmet-vim'
Plug 'vim-python/python-syntax'
Plug 'w0rp/ale'
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'yggdroot/indentline'
Plug 'rust-lang/rust.vim'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'itchyny/vim-gitbranch'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/colorizer'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dart-lang/dart-vim-plugin'
Plug 'othree/html5.vim'
Plug 'vim-scripts/HTML-AutoCloseTag'
" Plug 'bitfyre/vim-indent-html' " <----- dont indent correctly"
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'chiel92/vim-autoformat'
Plug 'turbio/bracey.vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'luochen1990/rainbow'
Plug 'andymass/vim-matchup'
Plug 'easymotion/vim-easymotion'
" Plug 'flazz/vim-colorschemes'
" Plug 'chriskempson/base16-vim'
" Plug 'AndrewRadev/splitjoin.vim'
" auto formatter
"Plug 'townk/vim-autoclose'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
"Plug '/home/mpaulson/personal/vim-apm'
"Plug 'theprimeagen/vim-be-good'
"Plug 'gruvbox-community/gruvbox'
" telescope requirements...
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-lua/telescope.nvim'

"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
"Plug '/home/mpaulson/personal/VimDeathmatch/client'
" Neovim lsp Plugins
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"Plug 'tjdevries/nlua.nvim'
"Plug 'tjdevries/lsp_extensions.nvim'

call plug#end()
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" telescope
let g:telescope_cache_results = 1
let g:telescope_prime_fuzzy_find  = 1

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_branch_actions = {
      \ 'rebase': {
      \   'prompt': 'Rebase> ',
      \   'execute': 'echo system("{git} rebase {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-r',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'track': {
      \   'prompt': 'Track> ',
      \   'execute': 'echo system("{git} checkout --track {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-t',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \}
" lua require('telescope').setup({defaults = {file_matching_strategy = "prime" }})

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>

nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +2<CR>
nnoremap <Leader>- :vertical resize -2<CR>
nnoremap <Leader>h+ :resize +2<CR>
nnoremap <Leader>h- :resize -2<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" greatest remap ever
vnoremap <leader>p "_dP

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>

" Vim with me
nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

inoremap <C-c> <esc>

"let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
"lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
"lua require'nvim_lsp'.clangd.setup{ on_attach=require'completion'.on_attach }
"lua require'nvim_lsp'.gopls.setup{ on_attach=require'completion'.on_attach }
"lua require'nvim_lsp'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
" lua require'nvim_lsp'.sumneko_lua.setup{ on_attach=require'completion'.on_attach }

"nmap <leader>gh :diffget //3<CR>
"nmap <leader>gu :diffget //2<CR>
"nmap <leader>gs :G<CR>

" Terminal commands
" ueoa is first through fourth finger left hand home row.
" This just means I can crush, with opposite hand, the 4 terminal positions
"nmap <leader>tu :call GotoBuffer(0)<CR>
"nmap <leader>te :call GotoBuffer(1)<CR>
"nmap <leader>to :call GotoBuffer(2)<CR>
"nmap <leader>ta :call GotoBuffer(3)<CR>

"nmap <leader>tsu :call SetBuffer(0)<CR>
"nmap <leader>tse :call SetBuffer(1)<CR>
"nmap <leader>tso :call SetBuffer(2)<CR>
"nmap <leader>tsa :call SetBuffer(3)<CR>

"fun! EmptyRegisters()
"    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
"    for r in regs
"        call setreg(r, [])
"    endfor
"endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" ES
com! W w

fun! ThePrimeagen_LspHighlighter()
    lua print("Testing")
    lua package.loaded["my_lspconfig"] = nil
    lua require("my_lspconfig")
endfun

fun! GotoBuffer(ctrlId)
    if (a:ctrlId > 9) || (a:ctrlId < 0)
        echo "CtrlID must be between 0 - 9"
        return
    end

    let contents = g:win_ctrl_buf_list[a:ctrlId]
    if type(l:contents) != v:t_list
        echo "Nothing There"
        return
    end

    let bufh = l:contents[1]
    call nvim_win_set_buf(0, l:bufh)
endfun

" How to do this but much better?
let g:win_ctrl_buf_list = [0, 0, 0, 0]
fun! SetBuffer(ctrlId)
    if has_key(b:, "terminal_job_id") == 0
        echo "You must be in a terminal to execute this command"
        return
    end
    if (a:ctrlId > 9) || (a:ctrlId < 0)
        echo "CtrlID must be between 0 - 9"
        return
    end

    let g:win_ctrl_buf_list[a:ctrlId] = [b:terminal_job_id, nvim_win_get_buf(0)]
endfun

fun! SendTerminalCommand(ctrlId, command)
    if (a:ctrlId > 9) || (a:ctrlId < 0)
        echo "CtrlID must be between 0 - 9"
        return
    end
    let contents = g:win_ctrl_buf_list[a:ctrlId]
    if type(l:contents) != v:t_list
        echo "Nothing There"
        return
    end

    let job_id = l:contents[0]
    call chansend(l:job_id, a:command)
endfun

com! SetLspVirtualText call ThePrimeagen_LspHighlighter()

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END


hi semshiGlobal      ctermfg=red guifg=#ff0000
hi semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiGlobal          ctermfg=214 guifg=#ffaf00
hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#5fafff
hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=bold
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#b2b2b2
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=bold
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
sign define semshiError text=E> texthl=semshiErrorSign

" ------ autocmd ------



" when not running in a console or a terminal that doesn't support 256 colors
" enable cursorline in the currently active window and disable it in inactive ones
if $DISPLAY !=? '' && &t_Co == 256
    augroup cursorline
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
    augroup END
endif

" indentation:

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
set list

"Remove underline
hi CursorLineNr    term=bold cterm=bold ctermfg=012 gui=bold
set listchars=tab:>␣,space:·
let g:lasttab = 1
augroup save_last_tab
    autocmd!
    autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

" Reload changes if file changed outside of vim requires autoread
augroup load_changed_file
    autocmd!
    autocmd FocusGained,BufEnter * if mode() !=? 'c' | checktime | endif
    autocmd FileChangedShellPost * echo "Changes loaded from source file"
augroup END
let g:lasttab = 1
augroup save_last_tab
    autocmd!
    autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

" Reload changes if file changed outside of vim requires autoread
augroup load_changed_file
    autocmd!
    autocmd FocusGained,BufEnter * if mode() !=? 'c' | checktime | endif
    autocmd FileChangedShellPost * echo "Changes loaded from source file"
augroup END
set list



let g:airline#extensions#bookmark#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=1

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
"" Ɇ
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


let g:airline_extensions = ['tabline','branch']
"let g:airline_theme = 'solarized'
"let g:airline#extensions#branch#enabled = 1

hi normal ctermbg=black

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"set indentexpr
let g:html_indent_style1 = "auto"
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType html :RainbowToggleOff
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
let g:python_highlight_all = 1
set mouse=a
set clipboard+=unnamedplus
"autocmd FileType python colorscheme jinx
"autocmd FileType python let g:airline_theme = 'raven'
"autocmd FileType python let jinx_colors = 'midnight'
let g:rainbow_active = 1
set showmatch
highlight MatchParen ctermbg=blue guibg=lightblue
"hi! MatchParen cterm=NONE,bold gui=NONE,bold  guibg=#eee8d5 guifg=NONE
hi! MatchParen cterm=NONE,bold gui=NONE,bold  guibg=#474747 guifg=NONE
let g:loaded_matchit = 1
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

function! s:GoToDefinition()
  if CocAction('jumpDefinition')
    return v:true
  endif

  let ret = execute("silent! normal \<C-]>")
  if ret =~ "Error" || ret =~ "错误"
    call searchdecl(expand('<cword>'))
  endif
endfunction

nmap <silent> gd :call <SID>GoToDefinition()<CR>
"let g:python_highlight_string_format = 1
"let g:python_highlight_string_formatting = 1
"let g:python_highlight_string_templates = 1
"let g:python_highlight_operators = 1
let g:python_highlight_all = 1
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>! :q!<CR>
map <leader>fr 0]%<<V%j<
map <leader>fs :Files<cr>
nmap <leader>{ [%
nmap <leader>} ]%
:imap ññ <Esc>
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <leader>r :@:<CR>  
tnoremap <leader><ESC><ESC>  <C-\><C-n>
