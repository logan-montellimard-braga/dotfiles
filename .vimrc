" -----------------------------------------------------------------------------
" | Author : Logan BRAGA                                                      |
" |          <contact@loganbraga.fr>                                          |
" |          <loganbraga.fr>                                                  |
" |                                                                           |
" | No claim, I just took and mixed some config stuffs, made other.           |
" | Do What The Fuck You Want To Public Licence.                              |
" -----------------------------------------------------------------------------


""""" VIM CONFIGURATION FILE {{{{{
""" INITIALISATION {{{
    filetype off                   " required to init
    set rtp+=~/.vim/ftplugin/      " Add filetype plugins
    set rtp+=~/.vim/bundle/vundle/ " Let vundle manage itself
""" END INITIALISATION }}}


""" PLUGINS {{{
    call vundle#begin()
    Plugin 'gmarik/vundle'                      " Manage plugins
        " Files & navigation
            Plugin 'kien/ctrlp.vim'                  " Fuzzy finder
            Plugin 'scrooloose/nerdtree'             " Files tree
            Plugin 'fholgado/minibufexpl.vim'        " Buffers menu
            Plugin 'vim-scripts/mru.vim'             " Recently opened files
            Plugin 'mileszs/ack.vim'                 " Ack is the new grep
            Plugin 'Lokaltog/vim-easymotion'         " Quick motions
            Plugin 'bronson/vim-visual-star-search'  " * works with visual mode
            Plugin 'tommcdo/vim-exchange'            " Swap words and lines
            Plugin 'qstrahl/vim-dentures'            " Select blocs by indent level
            Plugin 'tpope/vim-surround'              " Change surroundings
        " Languages helpers
            Plugin 'scrooloose/syntastic'            " Syntax checker
            Plugin 'nathanaelkane/vim-indent-guides' " Show indent lines
            Plugin 'tpope/vim-commentary'            " Toggle universal comments
            Plugin 'tpope/vim-endwise'               " Auto close blocks
            Plugin 'godlygeek/tabular'               " Page layout
            Plugin 'tsaleh/vim-matchit'              " Expands %
            Plugin 'vim-scripts/Auto-Pairs'          " Auto close structures
            Plugin 'vim-scripts/Align'               " Align texts by symbols
            Plugin 'vim-scripts/AutoComplPop'        " Autocomplete popup
            " Web developpment and Ruby
                Plugin 'tpope/vim-rails'                 " Rails utilities
                Plugin 'tpope/vim-cucumber'              " Cucumber support
                Plugin 'thoughtbot/vim-rspec'            " Rspec support
                Plugin 'tpope/vim-bundler'               " Bundler wrapper
                Plugin 'tpope/vim-haml'                  " Haml and SASS support
                Plugin 'groenewege/vim-less'             " Less support
                Plugin 'pangloss/vim-javascript'         " Javascript enhanced
                Plugin 'kchmck/vim-coffee-script'        " Coffeescript support
                Plugin 'tpope/vim-ragtag'                " Web tags boilerplate
                Plugin 'tristen/vim-sparkup'             " HTML Zen-coding
                Plugin 'miripiruni/CSScomb-for-Vim'      " Clean CSS files
                Plugin 'hail2u/vim-css3-syntax'          " CSS3 Support
            " Publication
                Plugin 'jcf/vim-latex'                   " Latex Suite
                Plugin 'tpope/vim-abolish'               " Avoid typos
            " Snippets
                Plugin 'SirVer/ultisnips'                " Code snippets plugin
                Plugin 'honza/vim-snippets'              " Said code snippets
        " Utility
            Plugin 'sjl/gundo.vim'                   " Undo tree history
            Plugin 'tpope/vim-speeddating'           " Correct use of date inc/dec
            Plugin 'vim-scripts/YankRing.vim'        " Store yanked texts
            Plugin 'tpope/vim-unimpaired'            " Cool bindings
            Plugin 'ervandew/supertab'               " Autocomplete with tab upon context
            Plugin 'tpope/vim-repeat'                " Allow repeat with '.' for plugins
            Plugin 'svermeulen/vim-easyclip'         " Smart copy/cut/delete
            Plugin 'tpope/vim-capslock'              " Software capslock. Cool with remapped capslock
            " Git & Gist
                Plugin 'mattn/gist-vim'                  " Send to Gist
                Plugin 'mattn/webapi-vim'                " Required for Gist
                Plugin 'vim-scripts/gitignore'           " Add .gitignore to wildignore locally
                Plugin 'tpope/vim-fugitive'              " Git integration
            " Code analysys
                Plugin 'chrisbra/NrrwRgn'                " Select region to safely edit
                Plugin 'majutsushi/tagbar'               " Get functions and var in code
                Plugin 'vim-scripts/SrcExpl'             " Explore declarations
                Plugin 'tpope/vim-characterize'          " Get encoding infos of character
            " User-interface
                Plugin 'kshenoy/vim-signature'           " Toggle marks column
                Plugin 'christoomey/vim-tmux-navigator'  " Tmux seamless integration
                Plugin 'tpope/vim-dispatch'              " Run tests and compilation in spare pane async
    call vundle#end()
""" END PLUGINS }}}


""" OPTIONS {{{
    filetype indent plugin on " enable ft+plugin detect
    set viminfo='100,f1       " save folds upon exit
    " Interface
        set nocompatible                                                   " don't vi-compatible
        set noshowmode                                                     " don't show mode
        set shortmess=aTs                                                  " Shorten error messages
        set termencoding=utf-8                                             " Work with URXVT
        set cmdheight=1                                                    " Command zone is 1-line high
        set nolinebreak                                                    " Don't auto break lines
        set showbreak=\...\                                                " display a sign in front of wrapped lines
        set nopaste                                                        " disable paste mode by default
        set colorcolumn=                                                   " Cursor column not set by default
        set noexrc                                                         " don't use other .*rc(s)
        syntax on                                                          " syntax highlighting
        set t_Co=256                                                       " 256-colors
        colors base16-mocha                                                " select colorscheme
        set ttymouse=xterm2                                                " Currently being tested
        set background=dark                                                " dark background
        set cursorline                                                     " hilight cursor line
        set more                                                           " use more as a pager
        set number                                                         " show line numbers
        set ruler                                                          " Vertical line cursor
        set relativenumber                                                 " use line numbers from the current line
        set numberwidth=5                                                  " number of line numbers to show
        set scrolloff=3                                                    " lines above/below cursor
        set showcmd                                                        " show cmds being typed
        set title                                                          " set window title
        set fillchars+=vert:*                                              " vertical splits separator
        set laststatus=2                                                   " always show statusline
        set mouse=nch                                                      " mouse
        set list                                                           " Show whitespaces
        set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:!,conceal:? " How to show whitespaces
        set noerrorbells                                                   " disable beep
        set novisualbell                                                   " disable flashing

    " Statusline
        function! SetStatus()
            setl statusline+=%1*\ %<%.50f%*                  " tail of the filename
            setl statusline+=%1*%m%*                         " modified flag
            setl statusline+=%1*%h%*                         " help file flag
            setl statusline+=%1*%r%*                         " read only flag
            setl statusline+=\ [%{FileSize()}]               " get size of the current file
            setl statusline+=%1*%y%*                         " filetype
            setl statusline+=%{Encoding()}                   " encoding
            setl statusline+=%1*%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%*
            setl statusline+=\ %1*%{fugitive#statusline()}%* " git integration
            setl statusline+=%=                              " left/right separator
            setl statusline+=[¶:%1*%{WS_Show()}%*            " show whitespace showing mode " 
            setl statusline+=\ ✔:%1*%{Spell_Show()}%*        " spellcheck infos
            setl statusline+=\ ☱:%1*%{Foldmethod_Show()}%*]  " foldmethod infos
            setl statusline+=\ [➔:%1*%{Tabs_Show()}%*        " tabs showing status
            setl statusline+=\ ⌘:%1*%{Tabs_Info()}%*]        " tabs infos
            setl statusline+=\ \ %c%1*,%*                    " cursor column
            setl statusline+=%l%1*/%L\ \ %*                  " cursor line/total lines
            setl statusline+=%p%%\                           " percent through file
        endfunction

        " Update when switching mode
        function! SetStatusInsertMode(mode)
            setl statusline=%*
            if a:mode == 'i'
                if &paste
                    setl statusline+=%2*\ PASTE\ %3*◤%*
                else
                    setl statusline+=%2*\ INSERT\ %3*◤%*
                endif
            elseif a:mode == 'r'
                setl statusline+=%2*\ REPLACE\ %3*◤%*
            elseif a:mode == 'normal'
                setl statusline+=%2*\ NORMAL\ %3*◤%*
            endif
            call SetStatus()
        endfunction
        au VimEnter     * call SetStatusInsertMode('normal')
        au InsertEnter  * call SetStatusInsertMode(v:insertmode)
        au InsertLeave  * call SetStatusInsertMode('normal')
        au BufEnter     * call SetStatusInsertMode('normal')

        function! SetStatusLeaveBuffer()
            setl statusline=""
            call SetStatus()
        endfunction
        au BufLeave * call SetStatusLeaveBuffer()

        " Tell if whitespaces are shown
        function! WS_Show()
            if (&list)
                return "on"
            else
                return "off"
            endif
        endfunction

        " Tell what foldmethod is used
        function! Foldmethod_Show()
            return  &foldmethod
        endfunction

        " Tell if spellcheck is enabled
        function! Spell_Show()
            if (&spell == 0)
                return  "off"
            else
                return "on(" . &spelllang . ")"
        endfunction

        " Tell if tabs are true tabs or spaces
        function! Tabs_Show()
            if &expandtab
                return "off"
            else
                return "on"
            endif
        endfunction

        " Return tabs length infos
        function! Tabs_Info()
            return &shiftwidth . &softtabstop . &tabstop
        endfunction

        " Return file encodind
        function! Encoding()
            if (&fileencoding == "utf-8") && (&ff == "unix")
                return "[✔]"
            elseif &fileencoding == ""
                if &encoding != ""
                    return "[" . &encoding . "," . &ff . "]"
                else
                    return "[-?- " . &ff . "]"
                endif
            else
                return "[" . &fileencoding . "," . &ff . "]"
            endif
        endfunction

        " Return file size
        function! FileSize()
                let bytes = getfsize(expand("%:p"))
                if bytes <= 0
                    return "0"
                endif
                if bytes < 1024
                    return bytes . "o"
                else
                    return (bytes / 1024) . "Ko"
                endif
        endfunction

    "  Tabline
    function! MyTabLine()
        let s = ''
        for i in range(tabpagenr('$'))
            let tabnr = i + 1
            let winnr = tabpagewinnr(tabnr)
            let buflist = tabpagebuflist(tabnr)
            let bufnr = buflist[winnr - 1]
            let bufname = fnamemodify(bufname(bufnr), ':t')
            let s .= '%' . tabnr . 'T'
            let s .= (tabnr == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
            let s .= ' ' . tabnr
            let n = tabpagewinnr(tabnr,'$')
            if n > 1 | let s .= ':' . n | endif
            let s .= empty(bufname) ? ' [No Name] ' : ' ' . bufname . ' '
            let bufmodified = getbufvar(bufnr, "&mod")
            if bufmodified | let s .= '+ ' | endif
        endfor
        let s .= '%#TabLineFill#'
        return s
    endfunction
    set tabline=%!MyTabLine()

    " Wrapping & folding
        set nowrap                  " don't wrap lines
        set sidescrolloff=5         " move UI focus when approaching edge of screen
        set foldcolumn=0            " hide folding column
        set foldmethod=indent       " folds using indent
        set foldnestmax=10          " max 10 nested folds
        set foldlevelstart=99       " folds open by default
        set textwidth=80            " lines should be 80-char long
        set formatoptions+=lwcroqnj " auto format
        set formatoptions-=t        " auto format : don't format text
        set wrapmargin=2            " 2 chars border for wrapping
        set nojoinspaces            " don't duplicate spaces when joining
        set foldtext=NeatFoldText() " custom folding bar
        function! NeatFoldText()
            let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
            let lines_count = v:foldend - v:foldstart + 1
            let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
            let foldchar = matchstr(&fillchars, 'fold:\zs.')
            let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
            let foldtextend = lines_count_text . repeat(foldchar, 8)
            let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
            return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
        endfunction

    " Files & buffers
        set hidden                            " buffer change silent
        set equalalways                       " same-sized splits
        set lazyredraw                        " don't redraw every second
        set history=1000                      " Number of history actions to keep
        set undolevels=1000                   " Number of undos to keep
        au BufRead,BufNewFile *.txt set ft=sh " opens .txt with highlight
        set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.rar,*.tar,*.gz,*.hg,*.git,*.DS_Store,*.bak,*.pyc,*.o,*.ojb,*.a,*.pdf,*.jpg,*.jpeg,*.gif,*.png,*.bmp,*.xbm,*.avi,*.mkv,*.mp4,*.mp3,.*.flac,*.iso,*.~

    " Editing
        set spelllang=fr               " Frenchie here
        set nospell                    " don't autocorrect by default
        set nostartofline              " no goto #1 char in line
        set iskeyword+=$,@,%,#,-,_     " not word dividers
        set backspace=indent,eol,start " smart backspace
        set nrformats+=alpha           " incr/decr letters C-a/-x

    " Indentation
        set expandtab     " no real tabs
        set shiftround    " be clever with tabs
        set shiftwidth=4  " tabs width
        set smarttab      " tab to 0,4,8 etc.
        set softtabstop=4 " tab feels like <tab>
        set tabstop=4     " replace <TAB> w/4 spaces
        set autoindent    " preserve indentation
        set copyindent    " copy the previous indentation
        set cindent

        " Filetype specific indentation & compilation
        autocmd FileType make                    set local noexpandtab
        autocmd FileType asciidoc                set nocindent noautoindent
        autocmd FileType sh,zsh,bash             set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=./%
        autocmd FileType python                  set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=python\ %
        autocmd FileType perl                    set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=perl\ %
        autocmd FileType java                    set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=javac\ %
        autocmd FileType haskell                 set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=ghc\ %
        autocmd FileType lua                     set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=lua\ %
        autocmd FileType c                       set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=gcc\ %\ -o\ %:t:r
        autocmd FileType cpp                     set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=g++\ %\ -o\ %:t:r
        autocmd FileType php                     set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=php\ %
        autocmd FileType html,xml,css,yaml       set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=iceweasel\ %
        autocmd FileType javascript              set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=js\ %
        autocmd FileType haml                    set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=haml\ %\ %:t:r.html
        autocmd FileType scss,sass               set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=sass\ %\ %:t:r.css
        autocmd FileType less                    set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=lessc\ %\ \>\ %:t:r.css
        autocmd FileType coffee                  set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=coffee\ -c\ %
        autocmd FileType ruby,eruby              set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=ruby\ %
        autocmd FileType cucumber                set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=cucumber\ %
        autocmd FileType tex                     set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=pdflatex\ %

        " Make & view for c & c++ & hs
        autocmd FileType c nnoremap <leader>mkv :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
        autocmd FileType cpp nnoremap <leader>mkv :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>'
        autocmd FileType cpp nnoremap <leader>gtk :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' `pkg-config gtkmm-2.4 --cflags --libs`'<CR>
        autocmd FileType haskell nnoremap <leader>mkv :w <bar> exec '!ghc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>'

    " Searching
        set incsearch                                       " live-search
        set hlsearch                                        " highlight search
        set magic                                           " It's magic
        set ignorecase                                      " case insensitive search
        set smartcase                                       " ignore case, except if explicitely capitals
        set matchtime=2                                     " time to blink match {}
        set matchpairs+=<:>                                 " for ci< or ci>
        set showmatch                                       " tmpjump to match-bracket
        set matchtime=2                                     " Don't blink too much when matching structures
        set grepprg=ack\ -H\ --nocolor\ --nogroup\ --column " Ack is the new grep
        " Save cursor position
        autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     exe "normal! g`\"" |
            \ endif

    " Backup & storage
        set autochdir                 " always use current directory
        set autoread                  " refresh if changed
        set confirm                   " confirm changed files
        set noautowrite               " never autowrite files
        set backup                    " backup current file
        set backupcopy=auto           " Optimize backup time
        set backupdir=~/.vim/backup// " backup directory
        set backupskip="/tmp/*,/var/tmp/*" " Don't backup for these files
        set backupext=.vimbackup      " append ~ to backups
        set undofile                  " store undos
        set undodir=~/.vim/undo//     " undo directory
        set swapfile                  " make swap files
        set dir=/tmp//                " store everything
        set updatecount=200           " Swap file after X chars changed
        set patchmode=                " No origin file

        " Save folds upon exit // THOSE FUCKERS SCREW UP HALF MY PLUGINS !
        " autocmd BufWinLeave *.* mkview
        " autocmd BufWinEnter *.* silent loadview
""" }}} END OPTIONS


""" KEYMAPS {{{
    let mapleader=","

    " Buffers & windows
        " New buffer
        noremap <leader>nb :enew<CR>
        " Disable diff
        noremap <leader>do :diffoff<CR>
        " Tabs
        nnoremap <leader>gT  :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
        nnoremap <leader>gt  :execute 'silent! tabmove ' . (tabpagenr())<CR>
        nnoremap <leader>tq :tabclose<CR>
        nnoremap <leader>tol :tabonly<CR>
        nnoremap <leader>tn :tabnew<CR>
        " Kill buffer
        noremap ]k :bd<CR>
        noremap [k :bd<CR>
        nnoremap <leader>bk :bp<bar>sp<bar>bn<bar>bd<CR>
        nnoremap <leader>bq :bp<bar>sp<bar>bn<bar>bd<CR>
        " Split windows/buffers into new windows/buffers
        nmap <leader>s<left>   :leftabove  vnew<CR>
        nmap <leader>s<right>  :rightbelow vnew<CR>
        nmap <leader>s<up>     :leftabove  new<CR>
        nmap <leader>s<down>   :rightbelow new<CR>
        nnoremap <leader>sv <C-w>v<C-w>l
        nnoremap <leader>sh <C-w>s<C-w>l
        " Easy window navigation
        map <leader>h <C-w>h
        map <leader>j <C-w>j
        map <leader>k <C-w>k
        map <leader>l <C-w>l
        map <leader>q <C-w>q
        map <leader>bn ]b
        map <leader>bp [b
        nnoremap <left> :bprevious<CR>
        nnoremap <right> :bnext<CR>
        nnoremap <up> gt
        nnoremap <down> gT
        map <leader>wol :only<CR>
        nnoremap <leader>rr <C-w>r
        nnoremap <leader>rR <C-w>R
        nnoremap <leader>rt <C-w>T
        nnoremap <leader>x <C-w>x
        nnoremap <leader>X <C-w>X
        nnoremap <leader><S-k> <C-w>K
        nnoremap <leader><S-j> <C-w>J
        nnoremap <leader><S-h> <C-w>H
        nnoremap <leader><S-l> <C-w>L
        " Better resizing
        nnoremap <C-w>< 20<C-w><
        nnoremap <C-w>> 20<C-w>>
        nnoremap <C-w>m< 60<C-w><
        nnoremap <C-w>m> 60<C-w>>
        nnoremap <C-w>b <C-w>=
        nnoremap <C-w>mm <C-w><bar>

    " Utilities
        " Smart commands
        command! WQ wq
        command! Wq wq
        command! W up
        command! Q q
        noremap :w :up
        noremap :wq :wq
        nnoremap <C-c> <C-a>
        " Copy to system clipboard
        vnoremap <leader>yy "*y
        vnoremap <leader>yc "+y
        " General compilation
        nnoremap <leader>ma :Make<CR>
        nnoremap <leader>!ma :Make!<CR>
        " Open current file in sublimetext (stupid teachers needing a visual editor to help, that's for you ;) )
        nnoremap <leader>st :! sublimetext % &<CR>
        " Convert file code to html
        noremap <leader>we :runtime!syntax/2html.vim<CR>
        " Go to first non-blank char with Home
        noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
        imap <silent> <Home> <C-O><Home>
        " Quickly edit/source .vimrc and useful files
        nnoremap <leader>vv :edit ~/.vimrc<CR>
        nnoremap <leader>vs :source ~/.vimrc<CR>
        nnoremap <leader>vz :edit ~/.zshrc<CR>
        nnoremap <leader>vt :edit ~/.tmux.conf<CR>
        " delete trailing whitespaces
        nnoremap <leader>W my :%s/\s\+$//<cr>:let @/=''<CR>'y
        " Standard remaps
        noremap ;; a
        inoremap ;; <Esc>
        inoremap jj <Esc>
        map ; .
        " Redraw
        nnoremap <leader>rd :redraw!<CR>
        " Select all text
        nnoremap <leader>va V`]
        "drag visual block
        vnoremap <S-K> xkP`[V`]
        vnoremap <S-J> xp`[V`]
        vnoremap <S-L> >gv
        vnoremap <S-H> <gv
        " We don't need any help!
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        " Clear the search highlighting
        nmap <silent> <leader>n :nohlsearch<CR>
        nmap <silent> <leader><space> :let @/ = ""<CR>
        " Compile and view latex
        noremap <leader>vl :silent! call Tex_ViewLaTeX()<CR>
        " Reindent whole file
        nnoremap <leader>df mfgg=G'fzz
        " Replace var name in current scope
        nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
        " Replace var name if whole file
        nnoremap gR gD:%s/<C-R>///gc<left><left><left>"}]

    " Motions
        " Move faster
        nnoremap <leader>$ <Home>
        " Break line at cursor position
        noremap Kj <Esc>i<Enter><Esc>
        noremap KJ <Esc>r<Enter>
        " Go to the 80th char of the line
        noremap <leader>ov 80\|
        inoremap <silent>ùù <Esc>80\|
        " Treat wrapped lines as normal lines
        nnoremap j gj
        nnoremap k gk
        " Move a line of text using ,m{j,k}
        nmap <leader>mj mz:m+<CR>
        nmap <leader>mk mz:m-2<CR>

    " Folding & wrapping
        " Toggle text wrapping
        nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
        " Toggle folding
        nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
        " Fold line
        vnoremap <Space> zf
        inoremap <leader>ai <M-I>
""" END KEYMAPS }}}


""" PLUGINS & FUNCTIONS MAPPINGS {{{
    " Toggle the quickfix window.
    nnoremap <silent><leader>/ :QFix<CR>
    nnoremap <silent><leader>! :QFix!<CR>
    command! -bang -nargs=? QFix call QFixToggle(<bang>0)
    let g:jah_Quickfix_Win_Height = 5
    function! QFixToggle(forced)
        if exists("g:qfix_win") && a:forced == 0
            cclose
        else
            execute "copen " . g:jah_Quickfix_Win_Height
        endif
    endfunction
    " Track the quickfix window
    augroup QFixToggle
        autocmd!
        autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
        autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
    augroup END

    " Toggle light/dark background
    nnoremap <silent><leader>bg :call ToggleBG()<CR>
    function! ToggleBG()
        if (&background == "light")
            set background=dark
        else
            set background=light
        endif
    endfunction

    " Gist
    nnoremap <leader>gi :Gist<CR>
    vnoremap <leader>gi :Gist<CR>
    nnoremap <leader>gpi :Gist -p<CR>
    nnoremap <leader>ggi :Gist -l<CR>

    " Syntastic
    nnoremap <silent><F1> :call ToggleSyntasticCheck()<CR>
    inoremap <silent><F1> <ESC>:call ToggleSyntasticCheck()<CR>a
    noremap <silent><leader>sce :Errors<CR>
    noremap <silent><leader>scl :lcl<CR>
    let g:syntastic_state = 0
    function! ToggleSyntasticCheck()
        if (g:syntastic_state == 0)
            let g:syntastic_state = 1
            SyntasticCheck
        else
            let g:syntastic_state = 0
            SyntasticReset
       endif
    endfunction

    " Align
    vnoremap <leader>= :Align =<CR>

    "  NERDTree
    nnoremap <silent> <F2> :NERDTreeToggle<CR>
    inoremap <silent> <F2> <ESC>:NERDTreeToggle<CR>

    " SrcExpl
    nnoremap <F3> :SrcExplToggle<CR>
    inoremap <F3> <ESC>:SrcExplToggle<CR>

    " YankRing
    nnoremap <silent> <F4> :YRShow<CR>
    inoremap <silent> <F4> <ESC>:YRShow<CR>

    " Rspec
    nnoremap <leader>spc :Dispatch rspec --drb<CR>
    nnoremap <leader>spn :call RunNearestSpec()<CR>
    nnoremap <leader>sps :call RunLastSpec()<CR>
    nnoremap <leader>spa :call RunAllSpecs()<CR>

    " Gundo
    nnoremap <silent> <F5> :GundoToggle<CR>
    inoremap <silent> <F5> <ESC>:GundoToggle<CR>

    " Tagbar
    nnoremap <silent> <F6> :TagbarToggle<CR>
    inoremap <silent> <F6> <ESC>:TagbarToggle<CR>

    " Fugitive
    nnoremap <leader>gwr :Gw<CR>
    nnoremap <leader>gcm :Gcommit<CR>
    nnoremap <leader>gst :Gstatus<CR>
    nnoremap <leader>gdf :Gdiff<CR>

    " Vundle
    nnoremap <leader>bo :Bvsplit<CR>
    nnoremap <leader>bd :Bpedit<CR>
    nnoremap <leader>be :Bedit<CR>

    " Signature
    nnoremap <F7> :SignatureToggle<CR>
    inoremap <F7> <ESC>:SignatureToggle<CR>a

    " Capslock
    imap <C-w>w <Plug>CapsLockToggle
    nmap <C-w>w <Plug>CapsLockToggle
    imap <C-w><C-w> <Plug>CapsLockToggle
    nmap <C-w><C-w> <Plug>CapsLockToggle
    nmap <leader>i i<Plug>CapsLockToggle
    nmap <leader>oo o<Plug>CapsLockToggle
    nmap <leader>O O<Plug>CapsLockToggle
    nmap <leader>a a<Plug>CapsLockToggle
    nmap <leader>A A<Plug>CapsLockToggle

    " EasyClip
    nmap dx <Plug>MoveMotionLinePlug
    xmap dx <Plug>MoveMotionXPlug
    nmap <silent> gs <plug>SubstituteOverMotionMap
    nmap gss <plug>SubstituteLine
    xmap gs <plug>XEasyClipPaste

    " CSS Comb
    nnoremap <leader>csc :call CSSCombSecure()<CR>
    function! CSSCombSecure()
        if ((&filetype == "css") || (&filetype == "scss"))
            CSScomb
        else
            echo "Not a css file"
        endif
    endfunction

    " Toggle syntax highlight
    nnoremap <F8> :if exists("syntax_on")
                \<Bar>syntax off<Bar>else<Bar>syntax enable<Bar>endif<CR>
    inoremap <F8> <ESC>:if exists("syntax_on")
                \<Bar>syntax off<Bar>else<Bar>syntax enable<Bar>endif<CR>a

    " Pastemode
    noremap <F9> :call TogglePasteWithEcho()<CR>
    inoremap <F9> <ESC>:call TogglePasteWithEcho()<CR>a
    function! TogglePasteWithEcho()
        if &paste
            set nopaste
            echo "Paste Mode Disabled!"
        else
            set paste
            echo "Paste Mode Enabled! Most plugins won't work!"
        endif
    endfunction

    " Toggle foldcolumn
    noremap <silent><F10> :call ToggleFoldCol()<CR>
    inoremap <silent><F10> :call <ESC>ToggleFoldCol()<CR>a
    function! ToggleFoldCol()
        if (&foldcolumn==0)
            set foldcolumn=2
        elseif (&foldcolumn<=4)
            set foldcolumn=5
        elseif (&foldcolumn<=9)
            set foldcolumn=10
        elseif (&foldcolumn>=10)
            set foldcolumn=0
        endif
    endfunction

    " Toggle indent level
    noremap <silent><leader>dl :call ChangeIndentLevel()<CR>
    function! ChangeIndentLevel()
        if ( (&sw==2) || (&ts==2) || (&sts==2) )
            set sw=4 ts=4 sts=4
        elseif ( (&sw==4) || (&ts==4) || (&sts==4) )
            set sw=8 ts=8 sts=8
        else
            set sw=2 ts=2 sts=2
        endif
    endfunction

    " Toggle foldmethod
    noremap <leader>z :call ToggleFoldMethod()<CR>
    function! ToggleFoldMethod()
        if (&foldmethod == "indent")
            set foldmethod=manual
            echo "Foldmethod: manual"
        elseif (&foldmethod == "manual")
            set foldmethod=syntax
            echo "Foldmethod: syntax"
        elseif (&foldmethod == "syntax")
            set foldmethod=marker
            echo "Foldmethod: marker"
        else
            set foldmethod=indent
            echo "Foldmethod: indent (Default)"
        endif
    endfunction

    " Toggle numbers/relative numbers
    noremap <silent><F11> :call ToggleNumbersType()<CR>
    inoremap <silent><F11> <ESC>:call ToggleNumbersType()<CR>a
    function! ToggleNumbersType()
        if &relativenumber && &number
            set nonumber
        elseif &relativenumber && !&number
            set norelativenumber
            set number
        elseif !&relativenumber && &number
            set nonumber
        elseif !&relativenumber && !&number
            set relativenumber
            set number
        endif
    endfunction

    " Toggle mouse support (plugin)
    noremap <F12> :call <SID>ToggleMouse()<CR>
    inoremap <F12> <ESC>:call <SID>ToggleMouse()<CR>a

    " MiniBufExpl
    nnoremap <silent> <leader>tb :MBEToggle<cr>

    " NrrwRgn
    xmap <leader>nr <Plug>NrrwrgnDo

    " MRU
    noremap <leader>ru :MRU<CR>

    " CtrlP
    nnoremap <leader>pp :CtrlPMixed<CR>

    " Highlight characters past 80, toggle with <leader>ol
    nnoremap <silent> <leader>ol :call ToggleOverLengthHighlight()<CR>
    nnoremap <silent> <leader>cc :call ToggleColorColumn()<CR>
    hi OverLength ctermfg=none ctermbg=11 cterm=none
    let g:overlength_enabled = 0
    function! ToggleOverLengthHighlight()
        if g:overlength_enabled == 0
            match
            match OverLength /\%80v.*/
            let g:overlength_enabled = 1
            autocmd! CursorMoved
        else
            match
            if g:occurences == 1
                autocmd CursorMoved * silent! exe printf('match Occurences /\V\<%s\>/', escape(expand('<cword>'), '/\'))
            endif
            let g:overlength_enabled = 0
        endif
    endfunction
    function! ToggleColorColumn()
        if (&colorcolumn!=80)
            set colorcolumn=80
        else
            set colorcolumn=
        endif
    endfunction

    " Toggle auto formatting
    noremap <leader>fo :call ToggleFormat()<CR>
    function! ToggleFormat()
        if &formatoptions == ""
            set formatoptions+=lwcroqnj
        else
            set formatoptions=
        endif
    endfunction

    " Highlight occurences of the word under cursor
    nnoremap <silent> <leader>oc :call ToggleOccurences()<cr>
    hi Occurences ctermfg=none ctermbg=11 cterm=none
    let g:occurences = 0
    function! ToggleOccurences()
            if g:occurences == 0
                match
                autocmd CursorMoved * silent! exe printf('match Occurences /\V\<%s\>/', escape(expand('<cword>'), '/\'))
                let g:occurences = 1
            else
                autocmd! CursorMoved
                let g:occurences = 0
                match
            endif
    endfunction

    " Toggle whitespace showing
    nnoremap <silent> <leader>ws :call ToggleWhiteSpaces()<CR>
    function! ToggleWhiteSpaces()
        if (&list)
            set nolist
        else
            set list
        endif
    endfunction

    " Show syntax highlighting group for word under cursor
    nmap <leader>wc :call SynStack()<CR>
    func! SynStack()
        if !exists("*synstack")
            return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc

    " Toggle spellcheck
    noremap <silent><leader>spt :call ToggleSpellCheck()<CR>
    noremap <silent><leader>spl :call ToggleSpellCheckLang()<CR>
    function! ToggleSpellCheckLang()
        if (&spelllang=='fr')
            set spelllang=en
        else
            set spelllang=fr
        endif
    endfunction
    function! ToggleSpellCheck()
        if &spell
            set nospell
        else
            set spell
        endif
    endfunction

    " Toggle expandtab
    noremap <silent><leader><Tab> :call ToggleTabs()<CR>
    function! ToggleTabs()
        if &expandtab
            set noexpandtab
        else
            set expandtab
        endif
    endfunction

    " Toggle statusline
    noremap <silent><leader>sl :call ToggleStatusline()<CR>
    function! ToggleStatusline()
        if (&laststatus==2)
            set laststatus=0
        else
            set laststatus=2
        endif
    endfunction

    " Toggle cursor column
    noremap <silent><leader>bb :call ToggleCursorColumn()<CR>
    function! ToggleCursorColumn()
        if (&cursorcolumn)
            set nocursorcolumn
        else
            set cursorcolumn
        endif
    endfunction
""" END PLUGINS & FUNCTIONS KEYMAPS }}}


""" PLUGINS SETTINGS {{{
    " Omni Completion
    set completeopt=longest,menuone,preview
    set wildmode=longest,list:longest
    set omnifunc=syntaxcomplete#Complete
    set complete=.,w,u,i,]

    " Latex-suite
    let g:Tex_CompileRule_pdf = "pdflatex $*"
    let g:Tex_DefaultTargetFormat = "pdf"
    let g:Tex_ViewRule_pdf = "zathura"
    let g:Tex_ViewRuleComplete_pdf = 'zathura $*.pdf &'
    let g:Tex_MultipleCompileFormats = "pdf"

    " Yankring
    let g:yankring_history_dir = '/home/logan/.vim/plugin'
    let g:yankring_max_history = 500
    let g:yankring_min_element_length = 5
    let g:yankring_max_element_length = 4194304
    let g:yankring_max_display = 500
    let g:yankring_persist = 1
    let g:yankring_dot_repeat_yank = 1
    let g:yankring_manual_clipboard_check = 1
    let g:yankring_window_use_horiz = 0
    let g:yankring_window_use_right = 0
    let g:yankring_window_width = 30

    " Autopairs
    let g:AutoPairsShortcutToggle = '<leader>ap'
    let g:AutoPairs = {'(':')', '[':']', '<':'>', '{':'}',"'":"'",'"':'"', '`':'`'}
    autocmd FileType c,cpp let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
    autocmd FileType ruby let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '|':'|'}
    autocmd FileType eruby let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '|':'|', '<%':'%>', '<%=':'%>'}
    autocmd FileType haml let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
    autocmd FileType tex let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"'"}

    " Signature
    let g:SignatureMarkOrder = "\m."
    let g:SignatureMarkTextHL = 'Signature'
    let g:SignatureMarkerTextHL = 'Markers'
    let g:SignaturePurgeConfirmation = 0
    let g:SignaturePrioritizeMarks = 0
    let g:SignaturePeriodicRefresh = 1

    " Rspec
    let g:rspec_command = "Dispatch rspec --drb {spec}"

    " Gundo
    let g:gundo_width = 30
    let g:gundo_preview_height = 30
    let g:gundo_right = 0
    let g:gundo_help = 0

    " Tagbar
    let g:tagbar_compact = 1
    let g:tagbar_indent = 2
    let g:tagbar_show_linenumbers = 0
    let g:tagbar_singleclick = 1
    let g:tagbar_iconchars = ['+', '-']
    let g:tagbar_width = 30
    let g:tagbar_left = 0

    " SrcExpl
    let g:SrcExpl_pluginList = [
                     \ "__Tag_List__",
                     \ "NERD_tree_1",
                     \ "Source_Explorer",
                     \ ]

    " PHP
    let php_sql_query = 1
    let php_htmlInStrings = 1

    " Javascript
    let g:javascript_enable_domhtmlcss = 1
    let g:javascript_conceal = 1

    " Matchit
    let b:match_ignorecase = 1

    " NrrwRgn
    let g:nrrw_rgn_vert = 1
    let g:nrrw_rgn_hl = 'Search'
    let g:nrrw_rgn_wdth = (winwidth(0)/2)
    let g:nrrw_topbot_leftright = 'botright'

    " MRU
    let g:MRU_File = '/home/logan/.vim/plugin/mru_files'
    let g:MRU_Max_Entries = 100
    let g:MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*\|*.vim\|*.out\|*.swp\|*.vim\|*.o'
    let g:MRU_Window_Height = 10
    let g:MRU_Auto_Close = 1
    let g:MRU_Use_Current_Window = 1

    " NERDTree
    let g:NERDTreeWinPos = "left"
    let g:NERDTreeWinSize = 30
    let g:NERDTreeHijackNetrw=1
    let g:NERDTreeHighlightCursorline = 1
    let g:NERDTreeQuitOnOpen = 1
    let g:NERDTreeShowLineNumbers = 1
    let g:NERDTreeMinimalUI = 0
    let g:NERDTreeIgnore=['\.vim$', '\~$', '\.out$']
    let g:NERDTreeSortOrder=['\/$', '\.rb$', '\.cpp', '\.php$', '\.hs', '*', '\.swp$', '\.bak$', '\~$']

    " EasyMotion
    let g:EasyMotion_leader_key = '<Leader><Leader>'
    let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    let g:EasyMotion_smartcase = 1
    let g:EasyMotion_enter_jump_first = 1
    let g:EasyMotion_space_jump_first = 1
    let g:EasyMotion_use_upper = 1
    hi EasyMotionTarget cterm=bold ctermfg=white ctermbg=1
    hi EasyMotionTarget2First cterm=bold ctermfg=white ctermbg=14
    hi EasyMotionTarget2Second cterm=bold ctermfg=white ctermbg=14
    hi EasyMotionShade cterm=none ctermfg=white ctermbg=10

    " Indent-guide
    let g:indent_guides_auto_colors = 0
    hi IndentGuidesOdd   ctermbg=0
    hi IndentGuidesEven  ctermbg=8

    " CtrlP
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_switch_buffer = 1
    let g:ctrlp_dotfiles = 1
    let g:ctrlp_clear_cache_on_exit=0
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\v\.(exe|so|dll)$',
          \ 'link': 'some_bad_symbolic_links',
            \ }

    " Syntastic
    let g:syntastic_check_on_wq=1
    let g:syntastic_cpp_check_header = 1
    let g:syntastic_cpp_compiler_options = ' -std=c++0x'
    let g:syntastic_ruby_checkers = ['mri', 'rubocop']
    let g:syntastic_html_checkers = ['tidy', 'validator']
    let g:syntastic_mode_map = {
        \ 'mode': 'passive',
        \ 'active_filetypes':
            \ ['c', 'php', 'cpp', 'haskell', 'javascript', 'perl', 'python', 'sh'] }

    " AutoComplPop
    let g:acp_behaviorKeywordLength = 5
    let g:acp_behaviorKeywordIgnores = ["get","if","while","for","unless","until","rescue","main","iostream","files"]
    let g:acp_completeOption = '.,w, b, k, u,i,]'
    let g:acp_behaviorKeywordCommand = "\<C-p>"
    let g:acp_behaviorFileLength = 4
    let g:acp_behaviorRubyOmniMethodLength = 4
    let g:acp_behaviorRubyOmniSymbolLength = 4
    let g:acp_behaviorHtmlOmniLength = 4
    let g:acp_behaviorCssOmniPropertyLength = 3
    let g:acp_behaviorCssOmniValueLength = 3

    " Coffeescript
    let coffee_compile_vert = 1
    let coffee_watch_vert = 1
    let coffee_run_vert = 1

    " Supertab
    let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

    " EasyClip
    let g:EasyClipAutoFormat = 1
    let g:EasyClipYankHistorySize = 100
    let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
    let g:EasyClipDoSystemSync = 1
    let g:EasyClipUseCutDefaults = 0
    let g:EasyClipUsePasteToggleDefaults = 0
    let g:EasyClipUseYankDefaults = 0

    " UltiSnips
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsListSnippets="<c-b>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
""" END PLUGINS SETTINGS }}}


""""" END VIM CONFIGURATION FILE {{{{{
