""""" VIM CONFIGURATION FILE {{{{{
""" INITIALISATION {{{
    filetype off                                    " required to init
    set rtp+=~/.vim/ftplugin/
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
""" END INITIALISATION }}}


""" PLUGINS {{{
     Bundle 'gmarik/vundle'
     Bundle 'kien/ctrlp.vim'
     Bundle 'sjl/gundo.vim'
     Bundle 'scrooloose/syntastic'
     Bundle 'tpope/vim-abolish'
     Bundle 'mileszs/ack.vim'
     Bundle 'Lokaltog/vim-easymotion'
     Bundle 'scrooloose/nerdtree'
     Bundle 'nathanaelkane/vim-indent-guides'
     Bundle 'vim-scripts/loremipsum'
     Bundle 'tsaleh/vim-matchit'
     Bundle 'fholgado/minibufexpl.vim'
     Bundle 'chrisbra/NrrwRgn'
     Bundle 'tpope/vim-pastie'
     Bundle 'kshenoy/vim-signature'
     Bundle 'tpope/vim-speeddating'
     Bundle 'tpope/vim-surround'
     Bundle 'godlygeek/tabular'
     Bundle 'majutsushi/tagbar'
     Bundle 'vim-scripts/tComment'
     Bundle 'tpope/vim-unimpaired'
     Bundle 'vim-scripts/YankRing.vim'
     Bundle 'MarcWeber/vim-addon-mw-utils'
     Bundle 'tomtom/tlib_vim'
     Bundle 'garbas/vim-snipmate'
     Bundle 'honza/vim-snippets'
     Bundle 'tpope/vim-endwise'
     Bundle 'tpope/vim-ragtag'
     Bundle 'ervandew/supertab'
     Bundle 'vim-scripts/Auto-Pairs'
     Bundle 'tristen/vim-sparkup'
     Bundle 'vim-scripts/SrcExpl'
     Bundle 'tpope/vim-repeat'
     Bundle 'groenewege/vim-less'
     Bundle 'xolox/vim-notes'
     Bundle 'xolox/vim-misc'
     Bundle 'tpope/vim-fugitive'
""" END PLUGINS }}}


""" OPTIONS {{{
    filetype indent plugin on                      " enable ft+plugin detect
    set viminfo='100,f1                             " save folds upon exit
    " Interface
        set nocompatible                            " don't vi-compatible
        set noshowmode                              " don't show mode
        set shortmess=aTs
        set cmdheight=1
        set nolinebreak
        set showbreak=\»\                          " display an arrow in front of wrapped lines
        set nopaste                                 " disable paste mode by default
        set colorcolumn=
        set noexrc                                  " don't use other .*rc(s)
        syntax on                                   " syntax highlighting
        set t_Co=256                                " 256-colors
        colors solarized                             " select colorscheme
        set ttymouse=xterm2                         " Currently being tested
        set background=light                         " dark background
        set cursorline                              " hilight cursor line
        set more                                    " use more as a pager
        set number                                  " show line numbers
        set ruler
        set relativenumber                          " use line numbers from the current line
        set numberwidth=5                           " number of line numbers to show
        set scrolloff=5                             " lines above/below cursor
        set showcmd                                 " show cmds being typed
        set title                                   " set window title
        set fillchars+=vert:*                       " vertical splits separator
        set laststatus=2                            " always show statusline
        set mouse=a                                 " mouse in all modes
        set list                                    " Show whitespaces
        set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:!,conceal:?
        set noerrorbells                            " disable beep
        set novisualbell                            " disable flashing

    " Statusline
        function! SetStatus()
            setl statusline+=%1*\ %<%.50f%* " tail of the filename
            setl statusline+=%1*%m%*   " modified flag
            setl statusline+=%1*%h%*   " help file flag
            setl statusline+=%1*%r%*   " read only flag
            setl statusline+=\ [%{FileSize()}] " get size of the current file
            setl statusline+=%1*%y%*      "filetype
            " setl statusline+=[%{strlen(&fenc)?&fenc:'none'}%1*,%* "file encoding
            " setl statusline+=%{&ff}]
            setl statusline+=%{Encoding()}
            setl statusline+=\ %1*%{fugitive#statusline()}%*
            setl statusline+=%=      "left/right separator
            setl statusline+=[¶:%1*%{WS_Show()}%*
            setl statusline+=\ ✔:%1*%{Spell_Show()}%*
            setl statusline+=\ ☱:%1*%{Foldmethod_Show()}%*]
            setl statusline+=\ [➔:%1*%{Tabs_Show()}%*
            setl statusline+=\ ⌘:%1*%{Tabs_Info()}%*]
            " setl statusline+=1*[%*ASCII:%1*%03.3b,%*HEX:%1*\%02.2B]\ \ \ \ %*
            setl statusline+=\ \ %c%1*,%*      "cursor column
            setl statusline+=%l%1*/%L\ \ %*    "cursor line/total lines
            setl statusline+=%p%%\    "percent through file
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
        " Statusline functions
        function! WS_Show()
            if (&list)
                return "on"
            else
                return "off"
            endif
        endfunction
        function! Foldmethod_Show()
            return  &foldmethod
        endfunction
        function! Spell_Show()
            if (&spell == 0)
                return  "off"
            else
                return "on(" . &spelllang . ")"
        endfunction
        function! Tabs_Show()
            if &expandtab
                return "off"
            else
                return "on"
            endif
        endfunction
        function! Tabs_Info()
            return &shiftwidth . &softtabstop . &tabstop
        endfunction
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

    " Wrapping & folding
        set nowrap                                  " don't wrap lines
        set sidescrolloff=10
        set foldcolumn=0                            " hide folding column
        set foldmethod=indent                       " folds using indent
        set foldnestmax=10                          " max 10 nested folds
        set foldlevelstart=99                       " folds open by default
        set textwidth=80
        set formatoptions+=aw
        set wrapmargin=2

    " Files & buffers
        set hidden                                  " buffer change silent
        set equalalways
        set lazyredraw
        set history=1000                            " Number of history actions to keep
        set undolevels=1000                         " Number of undos to keep
        au BufRead,BufNewFile *.txt set ft=sh       " opens .txt with highlight
        set wildignore=*/tmp/*,*.so,*.swp,*.zip,.bak,.pyc,.o,.ojb,.,a,.pdf,.jpg,.gif,.png,.avi,.mkv,.so

    " Editing
        set spelllang=fr
        set nospell
        set nostartofline                           " no goto #1 char in line
        set iskeyword+=_,$,@,%,#                    " not word dividers
        set backspace=indent,eol,start              " smart backspace
        set nrformats+=alpha                        " incr/decr letters C-a/-x
        au FileType c,cpp setlocal comments -=:// comments +=f://

    " Indentation
        set expandtab                               " no real tabs
        set shiftround                              " be clever with tabs
        set shiftwidth=4                            " tabs width
        set smarttab                                " tab to 0,4,8 etc.
        set softtabstop=4                           " tab feels like <tab>
        set tabstop=4                               " replace <TAB> w/4 spaces
        set autoindent                              " preserve indentation
        set copyindent                              " copy the previous indentation
        set cindent
        " Filetype specific indentation
        autocmd! FileType asciidoc                                  set nocindent noautoindent
        autocmd! FileType ruby                                      set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=ruby\ %
        autocmd! FileType sh,zsh,bash                               set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=./%
        autocmd! FileType cpp                                       set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=make
        autocmd! FileType vhdl                                      set shiftwidth=2 softtabstop=2 tabstop=2
        autocmd! FileType python                                    set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=python\ %
        autocmd! FileType perl                                      set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=perl\ %
        autocmd! FileType java                                      set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=javac\ %
        autocmd! FileType lua                                       set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=lua\ %
        autocmd! FileType tex                                       set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=pdflatex\ %
        autocmd! FileType c                                         set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=make
        autocmd! FileType javascript,arduino,php,html,xhtml,css,xml set shiftwidth=4 softtabstop=4 tabstop=4
        autocmd! FileType make                                      set local noexpandtab

        " Filetype auto detection when editing a file without extension
        augroup newFileDetection
            autocmd CursorMovedI * call CheckFileType()
        augroup END
        function! CheckFileType()
            if exists("b:countCheck") == 0
                let b:countCheck = 0
            endif
            let b:countCheck += 1
            if &filetype == "" && b:countCheck > 20 && b:countCheck < 200
                filetype detect
            elseif b:countCheck >=200 || &filetype != ""
                autocmd! newFileDetection
            endif
        endfunction

    " Searching
        set incsearch                               " live-search
        set hlsearch                                " highlight search
        set magic
        set ignorecase                              " case insensitive search
        set smartcase                               " ignore case, except if explicitely capitals
        set matchtime=2                             " time to blink match {}
        set matchpairs+=<:>                         " for ci< or ci>
        set showmatch                               " tmpjump to match-bracket
        autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     exe "normal! g`\"" |
            \ endif

    " Backup & storage
        set autochdir                               " always use current directory
        set autoread                                " refresh if changed
        set backup                                  " backup current file
        set backupdir=/tmp                          " backup directory
        set backupext=.vimbackup                  " append ~ to backups
        set backupskip="/tmp/*,/var/tmp/*"
        set patchmode=
        set undofile                                " store undos
        set undodir=/tmp                            " undo directory
        set backupcopy=auto
        set confirm                                 " confirm changed files
        set noautowrite                             " never autowrite files
        set swapfile                                " make swap files
        set updatecount=100
        set dir=/tmp                                " store everything
        autocmd BufWinLeave *.* mkview
        autocmd BufWinEnter *.* silent loadview
""" }}} END OPTIONS


""" KEYMAPS {{{
    let mapleader=","                               " change leader key

    " Buffers & windows
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
        nnoremap <leader>sv <C-w>v<C-w>l             " vertical
        nnoremap <leader>sh <C-w>s<C-w>l             " horizontal
        " Easy window navigation
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l
        map <leader>h <C-w>h
        map <leader>j <C-w>j
        map <leader>k <C-w>k
        map <leader>l <C-w>l
        map <leader>q <C-w>q
        map <leader>bn ]b
        map <leader>bp [b
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
        nnoremap <leader>= <C-w>=
        " Better resizing
        nnoremap <C-w>< 20<C-w><
        nnoremap <C-w>> 20<C-w>>
        nnoremap <C-w>m< 60<C-w><
        nnoremap <C-w>m> 60<C-w>>
        nnoremap <C-w>b <C-w>=
        nnoremap <C-w>mm <C-w><bar>

    " Utilities
        " Less compilation
        nnoremap <leader>css :w <BAR> !lessc % > %:t:r.css<CR><space>
        " Convert file code to html
        noremap <leader>we :runtime!syntax/2html.vim<CR>
        " Go to first non-blank char with Home
        noremap <expr> <silent> <Home> col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
        imap <silent> <Home> <C-O><Home>
        " Quickly edit/source .vimrc
        noremap <leader>ve :edit ~/.vimrc<CR>
        noremap <leader>vs :source ~/.vimrc<CR>
        " delete trailing whitespaces
        nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
        " Standard remaps
        noremap ;; i
        inoremap ;; <Esc>
        inoremap jj <Esc>
        map ; .
        " Select all text
        nnoremap <leader>v V`]
        " We don't need any help!
        inoremap <F1> <ESC>
        nnoremap <F1> <ESC>
        vnoremap <F1> <ESC>
        " Clear the search highlighting
        nmap <silent> <leader>n :nohlsearch<CR>
        nmap <silent> <leader><space> :let @/ = ""<CR>

    " Motions
        " Move faster
        map <leader>G <C-d>
        map <leader>g <C-u>
        map <C-j> <C-d>
        map <C-k> <C-u>
        nnoremap <leader>$ <Home>
        " Go to the 80th char of the line
        noremap <leader>oo 80\|
        " Treat wrapped lines as normal lines
        nnoremap j gj
        nnoremap k gk
        " Learn to use hjkl instead of arrows
        nnoremap <up> <nop>
        nnoremap <down> <nop>
        nnoremap <left> <nop>
        nnoremap <right> <nop>
        " Move a line of text using ,m{j,k}
        nmap <leader>m<Down> mz:m+<CR>
        nmap <leader>m<Up> mz:m-2<CR>

    " Folding & wrapping
        " Toggle text wrapping
        nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
        " Toggle folding
        nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
        " Fold line
        vnoremap <Space> zf
""" END KEYMAPS }}}


""" PLUGINS & FUNCTIONS MAPPINGS {{{
    nnoremap <silent><leader>bg :call ToggleBG()<CR>
    function! ToggleBG()
        if (&background == "light")
            set background=dark
        else
            set background=light
        endif
    endfunction
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

    "  NERDTree
    nnoremap <silent> <F2> :NERDTreeToggle<CR>
    inoremap <silent> <F2> <ESC>:NERDTreeToggle<CR>

    " SrcExpl
    nnoremap <F3> :SrcExplToggle<CR>
    inoremap <F3> <ESC>:SrcExplToggle<CR>

    " YankRing
    nnoremap <silent> <F4> :YRShow<CR>
    inoremap <silent> <F4> <ESC>:YRShow<CR>

    " Gundo
    nnoremap <silent> <F5> :GundoToggle<CR>
    inoremap <silent> <F5> <ESC>:GundoToggle<CR>

    " Tagbar
    nnoremap <silent> <F6> :TagbarToggle<CR>
    inoremap <silent> <F6> <ESC>:TagbarToggle<CR>

    " Signature
    nnoremap <F7> :SignatureToggle<CR>
    inoremap <F7> <ESC>:SignatureToggle<CR>a

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
    nnoremap <silent> <Leader>t :MBEToggle<cr>

    " NrrwRgn
    xmap <leader>nr <Plug>NrrwrgnDo

    " CtrlP
    nnoremap <leader>pp :CtrlP<CR>
    nnoremap <leader>pb :CtrlPBuffer<CR>
    nnoremap <leader>pm :CtrlPMixed<CR>

    " Highlight characters past 80, toggle with <leader>ol
    nnoremap <silent> <leader>ol :call ToggleOverLengthHighlight()<CR>
    nnoremap <silent> <leader>cc :call ToggleColorColumn()<CR>
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
            set formatoptions+=aw
        else
            set formatoptions=
        endif
    endfunction

    " Highlight occurences of the word under cursor
    nnoremap <silent> <leader>oc :call ToggleOccurences()<cr>
    " autocmd CursorMoved * silent! exe printf('match Occurences /\V\<%s\>/', escape(expand('<cword>'), '/\'))
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
    set completeopt=longest,menuone
    set wildmode=longest,list:longest

    " Notes
    let g:notes_directories = ['~/Documents/Notes']
    let g:notes_title_sync = 'rename_file'

    " Yankring
    let g:yankring_history_dir = '/home/logan/.vim/plugin'
    let g:yankring_max_history = 250
    let g:yankring_min_element_length = 3
    let g:yankring_max_element_length = 4194304
    let g:yankring_max_display = 250
    let g:yankring_persist = 1
    let g:yankring_dot_repeat_yank = 1
    let g:yankring_manual_clipboard_check = 1
    let g:yankring_window_use_horiz = 0
    let g:yankring_window_use_right = 0
    let g:yankring_window_width = 30

    " Autopairs
    let g:AutoPairs = {'(':')', '[':']', '<':'>', '&':'&', '|':'|', '{':'}',"'":"'",'"':'"', '`':'`'}
    let g:AutoPairsShortcutToggle = '<leader>ac'

    " Signature
    let g:SignatureMarkOrder = "\m."
    let g:SignatureMarkTextHL = 'Signature'
    let g:SignatureMarkerTextHL = 'Markers'
    let g:SignaturePurgeConfirmation = 1
    let g:SignaturePrioritizeMarks = 0
    let g:SignaturePeriodicRefresh = 1

    " Gundo
    let g:gundo_width = 30
    let g:gundo_preview_height = 30
    let g:gundo_right = 0
    let g:gundo_help = 0

    " Tagbar
    let g:tagbar_compact = 1
    let g:tagbar_indent = 4
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

    " Loremipsum
    let g:loremipsum_words = 50

    " Matchit
    let b:match_ignorecase = 1

    " NrrwRgn
    let g:nrrw_rgn_vert = 0
    let g:nrrw_rgn_hl = 'NrrwRg'
    let g:nrrw_rgn_wdth = 30

    " NERDTree
    let g:NERDTreeWinPos = "left"
    let g:NERDTreeHijackNetrw=1

    " EasyMotion
    let g:EasyMotion_leader_key = '<Leader><Leader>'
    let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

    " tComment
    let g:tcommentBlankLines = 0
    let g:tcommentModeExtra = ">>"

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
    let g:syntastic_mode_map = {
        \ 'mode': 'passive',
        \ 'active_filetypes':
            \ ['c', 'php', 'cpp', 'haskell', 'ruby', 'javascript', 'perl', 'python', 'sh'] }
""" END PLUGINS SETTINGS }}}


""" MISC {{{
    " Use ~/.vimrc.local if exists
    if filereadable($HOME."/.vimrc.local")
        source $HOME/.vimrc.local
    endif
""" END MISC }}}}}
""""" END VIM CONFIGURATION FILE {{{{{
