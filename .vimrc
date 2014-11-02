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
            Plugin 'szw/vim-ctrlspace'               " Manage workspaces
            Plugin 'Shougo/unite.vim'                " Find everything
            Plugin 'Shougo/vimproc.vim'              " Ditto, but async !
            Plugin 'Shougo/neomru.vim'               " Add recent files to unite
            Plugin 'airblade/vim-rooter'             " CD to project root
            Plugin 'scrooloose/nerdtree'             " Files tree
            Plugin 'Lokaltog/vim-easymotion'         " Quick motions
            Plugin 'bronson/vim-visual-star-search'  " * works with visual mode
            Plugin 'tommcdo/vim-exchange'            " Swap words and lines
            Plugin 'qstrahl/vim-dentures'            " Select blocs by indent level
            Plugin 'tpope/vim-surround'              " Change surroundings
            Plugin 'Shougo/CamelCaseMotion'          " Move inside Camel or snake case words
            Plugin 'wesQ3/vim-windowswap'            " Swap windows easily in layout
            Plugin 'vim-scripts/SearchComplete'      " Autocompletion in search
        " Languages helpers
            Plugin 'scrooloose/syntastic'            " Syntax checker
            Plugin 'Yggdroot/indentLine'             " Show indent lines
            Plugin 'tpope/vim-commentary'            " Toggle universal comments
            Plugin 'tpope/vim-endwise'               " Auto close blocks
            Plugin 'kien/rainbow_parentheses.vim'    " Rainbow parentheses
            Plugin 'Valloric/MatchTagAlways'         " Match XML tags
            Plugin 'justinmk/vim-matchparenalways'   " Match parens position
            Plugin 'tsaleh/vim-matchit'              " Expands %
            Plugin 'vim-scripts/Auto-Pairs'          " Auto close structures
            Plugin 'vim-scripts/Align'               " Align texts by symbols
            Plugin 'Valloric/YouCompleteMe'          " Killer auto completion
            Plugin 'octol/vim-cpp-enhanced-highlight' " CPP better syntax
            " Clojure
                Plugin 'tpope/vim-fireplace'         " Clojure REPL
                Plugin 'tpope/vim-leiningen'         " Leiningen integration
                " Plugin 'vim-scripts/paredit.vim'     " S-expression better support
                Plugin 'guns/vim-sexp'               " S-expressions better support
                Plugin 'tpope/vim-sexp-mappings-for-regular-people'
            " Web developpment and Ruby
                Plugin 'tpope/vim-rails'                 " Rails utilities
                Plugin 'tpope/vim-cucumber'              " Cucumber support
                Plugin 'thoughtbot/vim-rspec'            " Rspec support
                Plugin 'tpope/vim-bundler'               " Bundler wrapper
                Plugin 'tpope/vim-haml'                  " Haml and SASS support
                Plugin 'darthdeus/vim-emblem'            " Emblem.js support
                Plugin 'mustache/vim-mustache-handlebars' " Handlebars support
                Plugin 'pangloss/vim-javascript'         " Javascript enhanced
                Plugin 'kchmck/vim-coffee-script'        " Coffeescript support
                Plugin 'tpope/vim-ragtag'                " Web tags boilerplate
                Plugin 'tristen/vim-sparkup'             " HTML Zen-coding
                Plugin 'miripiruni/CSScomb-for-Vim'      " Clean CSS files
                Plugin 'hail2u/vim-css3-syntax'          " CSS3 Support
            " Publication
                Plugin 'jcf/vim-latex'                   " Latex Suite
                Plugin 'tpope/vim-abolish'               " Avoid typos
                Plugin 'plasticboy/vim-markdown'         " Markdown support
            " Snippets
                Plugin 'SirVer/ultisnips'                " Code snippets plugin
                Plugin 'honza/vim-snippets'              " Said code snippets
        " Utility
            Plugin 'sjl/gundo.vim'                   " Undo tree history
            Plugin 'AndrewRadev/switch.vim'          " Switch common patterns
            Plugin 'AndrewRadev/splitjoin.vim'       " From single line statements to multilines
            Plugin 'tpope/vim-unimpaired'            " Cool bindings
            Plugin 'PeterRincker/vim-argumentative'  " Easily switch arguments
            Plugin 'wellle/targets.vim'              " Awesome text-objects
            Plugin 'tpope/vim-repeat'                " Allow repeat with '.' for plugins
            Plugin 'svermeulen/vim-easyclip'         " Smart copy/cut/delete
            Plugin 'ConradIrwin/vim-bracketed-paste' " Auto paste mode
            " Git & Gist
                Plugin 'mattn/gist-vim'                  " Send to Gist
                Plugin 'mattn/webapi-vim'                " Required for Gist
                Plugin 'vim-scripts/gitignore'           " Add .gitignore to wildignore locally
                Plugin 'tpope/vim-fugitive'              " Git integration
                Plugin 'airblade/vim-gitgutter'          " Git diff integration
            " Code analysys
                Plugin 'chrisbra/NrrwRgn'                " Select region to safely edit
                Plugin 'majutsushi/tagbar'               " Get functions and var in code
                Plugin 'wesleyche/SrcExpl'               " Explore declarations
            " User-interface
                Plugin 'kshenoy/vim-signature'           " Toggle marks column
                Plugin 'christoomey/vim-tmux-navigator'  " Tmux seamless integration
                Plugin 't9md/vim-choosewin'              " Tmux display-pane in vim
                Plugin 'tpope/vim-dispatch'              " Run tests and compilation in spare pane async
                Plugin 'takac/vim-hardtime'              " Learn good habits
    call vundle#end()
""" END PLUGINS }}}


""" OPTIONS {{{
    filetype indent plugin on " enable ft+plugin detect
    set viminfo='100,f1       " save folds upon exit
    " Interface
        set nocompatible                                                   " don't vi-compatible
        set mousehide                                                      " don't show pointer when typing
        set synmaxcol=2048                                                 " don't highlight lines past 2048 chars
        set virtualedit=block,insert                                       " allow cursor in non existing places
        set diffopt+=iwhite                                                " ignore whitespaces in diff
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
        set formatoptions+=lwcqnj " auto format
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
        au BufNewFile,BufRead *.qss set ft=css
        set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.rar,*.tar,*.ico,*.sqlite3,*.gz,*.hg,*.git,*.DS_Store,*.bak,*.pyc,*.o,*.ojb,*.a,*.pdf,*.jpg,*.jpeg,*.gif,*.png,*.bmp,*.xbm,*.avi,*.mkv,*.mp4,*.mp3,.*.flac,*.iso,*.~

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
        autocmd FileType make                       set noexpandtab
        autocmd FileType asciidoc                   set nocindent noautoindent
        autocmd FileType sh,zsh,bash                set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=./%
        autocmd FileType python                     set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=python\ %
        autocmd FileType perl                       set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=perl\ %
        autocmd FileType java                       set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=javac\ %
        autocmd FileType haskell                    set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=ghc\ %
        autocmd FileType lua                        set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=lua\ %
        autocmd FileType c                          set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=gcc\ %\ -o\ %:t:r
        autocmd FileType cpp                        set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=g++\ %\ -o\ %:t:r
        autocmd FileType scala                      set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=scalac\ %
        autocmd FileType php                        set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=php\ %
        autocmd FileType html,xml,css,yaml,markdown set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=iceweasel\ %
        autocmd FileType markdown                   set commentstring=[//]:\ #\ (%s)
        autocmd FileType javascript                 set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=js\ %
        autocmd FileType haml                       set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=haml\ %\ %:t:r.html
        autocmd FileType scss,sass                  set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=sass\ %\ %:t:r.css
        autocmd FileType less                       set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=lessc\ %\ \>\ %:t:r.css
        autocmd FileType coffee                     set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=coffee\ -c\ %
        autocmd FileType ruby,eruby                 set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=ruby\ %
        autocmd FileType clojure                    set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=lein\ run
        autocmd FileType lisp                       set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=clisp\ %
        autocmd FileType cucumber                   set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=cucumber\ %
        autocmd FileType tex                        set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=pdflatex\ %

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
        " Split windows/buffers into new windows/buffers
        nmap <leader>s<left>   :leftabove  vnew<CR>
        nmap <leader>s<right>  :rightbelow vnew<CR>
        nmap <leader>s<up>     :leftabove  new<CR>
        nmap <leader>s<down>   :rightbelow new<CR>
        nnoremap <leader>sv <C-w>v<C-w>l
        nnoremap <leader>sh <C-w>s<C-w>l
        " Easy window navigation
        map <leader>q <C-w>q
        map <leader>bn ]b
        map <leader>bp [b
        nnoremap <left> <NOP>
        nnoremap <right> <NOP>
        nnoremap <up> <NOP>
        nnoremap <down> <NOP>
        " nnoremap <left> :bprevious<CR>
        " nnoremap <right> :bnext<CR>
        " nnoremap <up> gt
        " nnoremap <down> gT
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
        " Open current file in sublimetext
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
        inoremap ;; <Esc>
        inoremap jj <Esc>
        " map ; .
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
        " Underline current line with =, -
        nmap <silent> <leader>ul= :t.\|s/./=/g\|:nohls<cr>
        nmap <silent> <leader>ul- :t.\|s/./-/g\|:nohls<cr>
        " Resize buffer to needed size
        nmap <silent> <leader>sw :execute ":resize " . line('$')<cr>
        " Make the current file executable
        nmap <leader>chx :w<cr>:!chmod 755 %<cr>:e<cr>

        "smart indent when entering insert mode with i on empty lines
        function! IndentWithI()
            if len(getline('.')) == 0
                return "\"_ddO"
            else
                return "i"
            endif
        endfunction
        nnoremap <expr> i IndentWithI()

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

    " indentLine
    au VimEnter     * :IndentLinesDisable
    nnoremap <leader>ig :IndentLinesToggle<CR>

    " Gist
    nnoremap <leader>gi :Gist<CR>
    vnoremap <leader>gi :Gist<CR>
    nnoremap <leader>gpi :Gist -p<CR>
    nnoremap <leader>ggi :Gist -l<CR>

    " Switch
    nnoremap <silent><leader>l :Switch<CR>

    " Splitjoin
    nmap <leader>k :SplitjoinJoin<cr>
    nmap <leader>j :SplitjoinSplit<cr>

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

    " CamelCaseMotion
    map <S-W> <Plug>CamelCaseMotion_w
    map <S-B> <Plug>CamelCaseMotion_b
    map <S-E> <Plug>CamelCaseMotion_e

    " Choosewin
    nmap  <leader>cw  <Plug>(choosewin)

    " Align
    vnoremap <leader>= :Align =<CR>

    "  NERDTree
    nnoremap <silent> <F2> :NERDTreeToggle<CR>
    inoremap <silent> <F2> <ESC>:NERDTreeToggle<CR>

    " SrcExpl
    nnoremap <F3> :SrcExplToggle<CR>
    inoremap <F3> <ESC>:SrcExplToggle<CR>

    " Yankring
    nnoremap <F4> :Unite -auto-resize -no-start-insert history/yank<CR>

    " Rspec
    nnoremap <leader>spc :Dispatch rspec --drb<CR>
    nnoremap <leader>spn :call RunNearestSpec()<CR>
    nnoremap <leader>sps :call RunLastSpec()<CR>
    nnoremap <leader>spa :call RunAllSpecs()<CR>

    " Markdown
    autocmd FileType markdown nmap <tab> :Toch<CR>

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
    nnoremap <leader>gif :Gdiff<CR>

    " Git gutter
    nnoremap <leader>gtg :GitGutterToggle<CR>
    nnoremap <leader>gtl :GitGutterLineHighlightsToggle<CR>

    " Bundle
    nnoremap <leader>bo :Bvsplit<CR>
    nnoremap <leader>bd :Bpedit<CR>
    nnoremap <leader>be :Bedit<CR>

    " Signature
    nnoremap <F7> :SignatureToggle<CR>
    inoremap <F7> <ESC>:SignatureToggle<CR>a

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

    " NrrwRgn
    xmap <leader>nr <Plug>NrrwrgnDo

    " CTRLSpace
    nmap <leader>; :CtrlSpace<CR>

    " Unite
    nnoremap <leader>p :Unite -auto-resize file_rec/async directory<CR>
    nnoremap <leader>dp :Unite -auto-resize directory<CR>
    nnoremap <leader>dP :Unite -auto-resize directory_rec/async<CR>
    nnoremap <leader>ru :Unite -auto-resize -quick-match neomru/file<CR>
    nnoremap <leader>rU :Unite -auto-resize -default-action=cd -no-start-insert neomru/directory<CR>
    nnoremap <leader>bt :Unite -auto-resize -quick-match buffer<CR>
    nnoremap <leader>: :Unite -auto-resize -no-start-insert grep:.<CR>
    nnoremap <leader>L :Unite -auto-resize line<CR>
    nnoremap <leader>J :Unite -auto-resize -no-start-insert -quick-match jump<CR>
    nnoremap <leader>sn :Unite -auto-resize ultisnips<CR>
    nnoremap <leader>yp :Unite -auto-resize -no-start-insert history/yank<CR>
    nnoremap <leader>u :Unite -auto-resize -no-start-insert change<CR>

    " YCM
    nnoremap <leader>gd :YcmCompleter GoToImprecise<CR>

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

    " Autopairs
    let g:AutoPairsShortcutToggle = '<leader>ap'
    let g:AutoPairsShortcutBackInsert = '' " `â`
    let g:AutoPairsShortcutJump = '' " `î`
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

    " MatchTagAlways
    let g:mta_filetypes = {
                \ 'html' : 1,
                \ 'php' : 1,
                \ 'xhtml' : 1,
                \ 'xml' : 1,
                \}
    let g:mta_use_matchparen_group = 0
    let g:mta_set_default_matchtag_color = 0
    highlight MatchTag ctermfg=white ctermbg=none cterm=bold

    " PHP
    let php_sql_query = 1
    let php_htmlInStrings = 1

    " Javascript
    let g:javascript_enable_domhtmlcss = 1
    let b:javascript_fold = 1
    let g:javascript_conceal = 0

    " Matchit
    let b:match_ignorecase = 1

    " NrrwRgn
    let g:nrrw_rgn_vert = 1
    let g:nrrw_rgn_hl = 'Search'
    let g:nrrw_rgn_wdth = (winwidth(0)/2)
    let g:nrrw_topbot_leftright = 'botright'

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

    " indentLine
    let g:indentLine_char = '┆'

    " Unite
    let g:unite_enable_short_source_names = 1
    let g:unite_enable_start_insert = 1
    let s:unite_sources = 'file_rec/async,file_rec,neomru/file,directory_rec/async,directory_rec,neomru/directory'
    let g:unite_source_rec_max_cache_files = 5000
    let g:unite_source_history_yank_enable = 1
    let g:unite_cursor_line_highlight = 'UniteColor'
    hi UniteColor cterm=bold ctermfg=white ctermbg=9
    let g:unite_source_history_yank_file=$HOME.'/.vim/yankring.txt'
    let g:unite_data_directory='~/.vim/.cache/unite'
    let g:unite_source_history_yank_save_clipboard = 1
    let g:unite_abbr_highlight = 'Occurences'
    let g:unite_winheight = 20
    let g:unite_winwidth = 30
    let g:unite_split_rule = 'botright'
    let g:unite_prompt = '# '
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_max_candidates = 50
    let s:file_rec_ignore = unite#get_all_sources('file_rec/async')['ignore_pattern'] .
        \ '\|\.\%(jar\|jpg\|gif\|png\)$' .
        \ '\|opt\|Téléchargements'
    let g:unite_source_grep_default_opts =
                \ '-S --line-numbers --nocolor --nogroup --hidden --ignore ' .
                \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
    let g:unite_source_grep_recursive_opt = ''
    call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async',
                \ 'matchers', 'matcher_fuzzy')
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
    call unite#custom#source(s:unite_sources, 'max_candidates', 1000)
    call unite#custom#source('file_rec,directory_rec', 'ignore_pattern', s:file_rec_ignore)
    call unite#custom#source('neomru/file','ignore_pattern','\v[/\\]doc[/\\]\w+\.txt')
    call unite#custom#source('buffer,file,file_rec,file_rec/async,neomru/file,directory_rec',
                \ 'sorters', 'sorter_selecta')
    augroup vimrc_unite
        autocmd!
        autocmd BufLeave \[unite\]* if "nofile" ==# &buftype | setlocal bufhidden=wipe | endif
        autocmd FileType unite call s:unite_settings()
    augroup END
    function! s:unite_settings()
        setlocal nopaste
        let b:AutoPairs = {}
        unmap! <buffer> <c-d>
        nmap <buffer> <nowait> <C-d> <Plug>(unite_exit)
        imap <buffer> <nowait> <C-d> <Plug>(unite_exit)
        nmap <buffer> <nowait> <C-j> <Plug>(unite_toggle_auto_preview)
        nmap <buffer> <C-z> <Plug>(unite_toggle_transpose_window)
        imap <buffer> <TAB> <Plug>(unite_select_next_line)
        imap <buffer> <S-TAB> <Plug>(unite_select_previous_line)
        imap <buffer> <nowait> <C-w> <Plug>(unite_delete_backward_path)
    endfunction

    " Syntastic
    let g:syntastic_check_on_wq=1
    let g:syntastic_cpp_check_header = 1
    let g:syntastic_cpp_compiler_options = ' -std=c++0x'
    let g:syntastic_ruby_checkers = ['mri', 'rubocop']
    let g:syntastic_html_checkers = ['tidy', 'validator']
    let g:syntastic_mode_map = {
        \ 'mode': 'passive',
        \ 'active_filetypes': [
            \ 'c'
            \ , 'css'
            \ , 'php'
            \ , 'lua'
            \ , 'cpp'
            \ , 'haskell'
            \ , 'javascript'
            \ , 'perl'
            \ , 'python'
            \ , 'sh'
        \ ]
    \ }

    " Coffeescript
    let coffee_compile_vert = 1
    let coffee_watch_vert = 1
    let coffee_run_vert = 1

    " EasyClip
    let g:EasyClipAutoFormat = 1
    let g:EasyClipYankHistorySize = 100
    let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
    let g:EasyClipDoSystemSync = 1
    let g:EasyClipUseCutDefaults = 0
    let g:EasyClipUsePasteToggleDefaults = 0
    let g:EasyClipUseYankDefaults = 0

    " Choosewin
    let g:choosewin_color_label = { 'cterm': [ 4, 15, 'bold'] }
    let g:choosewin_color_label_current = { 'cterm': [ 12, 16, 'none'] }
    let g:choosewin_color_other = { 'cterm': [ 0, 8, 'none'] }
    let g:choosewin_label_fill = 0
    let g:choosewin_return_on_single_win = 1
    let g:choosewin_blink_on_land = 0
    let g:choosewin_label = 'AZEQSDWXCRFVTGB'
    let g:choosewin_tablabel = 'IOPKLMUJNYH'


    " UltiSnips
    let g:UltiSnipsExpandTrigger="<C-j>"
    let g:UltiSnipsListSnippets="<c-b>"
    let g:UltiSnipsJumpForwardTrigger="<C-j>"
    let g:UltiSnipsJumpBackwardTrigger="<C-k>"

    " YCM
    let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
    let g:ycm_min_num_of_chars_for_completion = 3
    let g:ycm_filetype_specific_completion_to_disable = {'cpp':'cpp', 'ruby':'ruby'}
    let g:ycm_complete_in_comments = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 1
    let g:ycm_server_use_vim_stdout = 1
    let g:ycm_server_log_level = 'error'
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1

    " YUNOcommit
    let g:YUNOcommit_after = 15

    " Git gutter
    let g:gitgutter_realtime = 0
    let g:gitgutter_eager = 0
    let g:gitgutter_diff_args = '-w'
    let g:gitgutter_escape_grep = 1

    " Rooter
    let g:rooter_use_lcd = 1

    " Switch
    let g:switch_custom_definitions = [
                \ ['left', 'right']
                \ , ['top', 'bottom']
                \ , ['up', 'down']
                \ , ['width', 'height']
                \ , ['center', 'justify']
                \ , ['hidden', 'visible', 'scroll', 'auto']
                \ , ['solid', 'dotted', 'dashed', 'double', 'groove', 'ridge', 'inset', 'outset']
                \ , ['wrong', 'right']
                \ , ['yes', 'no']
                \ , ['should', 'should_not']
                \ , ['before', 'after']
                \ , ['begin', 'end']
                \ , ['if', 'unless']
                \ , ['while', 'until']
                \ , ['include', 'extend']
                \ , ['padding', 'margin']
                \ , ['inline', 'bloc', 'table', 'none']
                \ , ['foo', 'bar', 'baz', 'quux']
                \ , ['transparent', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan']
                \ , ['white', 'black']
                \ ]

    " CTRLSpace
    let g:ctrlspace_set_default_mapping = 0
    let g:ctrlspace_max_files = 250
    let g:ctrlspace_max_search_results = 100
    let g:ctrlspace_height = 2
    let g:ctrlspace_max_height = 20
    let g:ctrlspace_search_resonators = ['.', '/', '\', '_', '-', '%', '$', '#', '@']
    let g:ctrlspace_symbols = {
        \ "cs"      : "#",
        \ "tab"     : "TAB",
        \ "all"     : "ALL",
        \ "open"    : "OPEN",
        \ "tabs"    : "- ",
        \ "c_tab"   : "+ ",
        \ "load"    : "LOAD",
        \ "save"    : "SAVE",
        \ "prv"     : "*",
        \ "s_left"  : "[",
        \ "s_right" : "]"
        \ }
    let g:ctrlspace_unicode_font = 1
    hi CtrlSpaceSelected cterm=bold ctermfg=15 ctermbg=9
    hi CtrlSpaceNormal   ctermfg=none ctermbg=none cterm=none
    hi CtrlSpaceSearch   ctermfg=0 ctermbg=3 cterm=none
    hi CtrlSpaceStatus   ctermfg=15  ctermbg=4 cterm=bold

    " Rainbow parentheses
    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0
    au Syntax lisp,clojure,scheme RainbowParenthesesToggle
    au Syntax lisp,clojure,scheme RainbowParenthesesLoadRound
    " au Syntax lisp,clojure,scheme RainbowParenthesesLoadSquare
    au Syntax lisp,clojure,scheme RainbowParenthesesLoadBraces

    " Hardtime
    let g:hardtime_default_on = 1
    let g:list_of_normal_keys = [ "h", "j", "k", "l", "-", "+" ]
    let g:list_of_visual_keys = [ "-", "+" ]
    let g:hardtime_timeout = 1500
    let g:hardtime_showmsg = 0
    let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]
    let g:hardtime_ignore_quickfix = 1
    let g:hardtime_allow_different_key = 1
    let g:hardtime_maxcount = 1

    " Mustache handlebars
    let g:mustache_abbreviations = 1

    " C++
    hi cppSTLconstant ctermfg=3 ctermbg=none cterm=none
    hi cppSTLfunction ctermfg=4 ctermbg=none cterm=none
    hi cCustomFunc ctermfg=14 ctermbg=none cterm=none
    hi cCustomClass ctermfg=1 ctermbg=none cterm=none

    " Sexp
    let g:sexp_insert_after_wrap = 0
    let g:sexp_enable_insert_mode_mappings = 0
""" END PLUGINS SETTINGS }}i}


""""" END VIM CONFIGURATION FILE {{{{{
