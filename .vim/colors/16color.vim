let g:colors_name = "16color"

""" GENERAL """
    " Interface
    hi Normal                  ctermfg=none
    hi Cursor                  ctermfg=1        ctermbg=1       cterm=bold
    hi CursorLine              ctermfg=none     ctermbg=0       cterm=bold
    hi CursorColumn            ctermfg=none     ctermbg=0       cterm=none
    hi LineNr                  ctermfg=0        ctermbg=none    cterm=none
    hi CursorLineNr            ctermfg=9        ctermbg=0       cterm=none
    hi Delimiter               ctermfg=13       ctermbg=none    cterm=none
    hi Folded                  ctermfg=8        ctermbg=8       cterm=reverse,bold
    hi FoldColumn              ctermfg=0        ctermbg=none    cterm=none
    hi Macro                   ctermfg=0        ctermbg=1       cterm=none
    hi ModeMsg                 ctermfg=0        ctermbg=none    cterm=none
    hi MoreMsg                 ctermfg=2        ctermbg=none    cterm=none
    hi Underlined              ctermfg=0        ctermbg=none    cterm=none
    hi VertSplit               ctermfg=8        ctermbg=8       cterm=bold,reverse
    hi Visual                  ctermfg=3        ctermbg=5       cterm=bold
    hi VisualNOS               ctermfg=1        ctermbg=235     cterm=bold
    hi WildMenu                ctermfg=104      ctermbg=1       cterm=underline
    hi MatchParen              ctermfg=3        ctermbg=5       cterm=bold

    " Search
    hi Search                  ctermfg=3        ctermbg=2       cterm=bold
    hi IncSearch               ctermfg=3        ctermbg=1       cterm=bold
    hi Occurences              ctermfg=none     ctermbg=0       cterm=bold

    " Special
    hi Comment                 ctermfg=0        ctermbg=none    cterm=none
    hi SpecialChar             ctermfg=15       ctermbg=none    cterm=none
    hi SpecialComment          ctermfg=8        ctermbg=none    cterm=none
    hi Special                 ctermfg=2        ctermbg=none    cterm=none
    hi SpecialKey              ctermfg=0        ctermbg=none    cterm=none
    hi NonText                 ctermfg=0        ctermbg=none    cterm=none

    " Diff
    hi DiffLine                ctermfg=none     ctermbg=none    cterm=none
    hi DiffOldLine             ctermfg=0        ctermbg=1       cterm=none
    hi DiffOldFile             ctermfg=0        ctermbg=9       cterm=bold
    hi DiffNewFile             ctermfg=0        ctermbg=10      cterm=bold
    hi DiffAdd                 ctermfg=none     ctermbg=2       cterm=none
    hi DiffAdded               ctermfg=0        ctermbg=2       cterm=none
    hi DiffDelete              ctermfg=none     ctermbg=1       cterm=none
    hi DiffRemoved             ctermfg=0        ctermbg=1       cterm=none
    hi DiffChange              ctermfg=none     ctermbg=5       cterm=none
    hi DiffChanged             ctermfg=0        ctermbg=5       cterm=none
    hi DiffText                ctermfg=none     ctermbg=none    cterm=none

    " Errors & Warnings
    hi Error                   ctermfg=9        ctermbg=none    cterm=bold
    hi ErrorMsg                ctermfg=9        ctermbg=none    cterm=bold
    hi WarningMsg              ctermfg=3        ctermbg=0       cterm=bold
    hi Exception               ctermfg=4        ctermbg=none    cterm=none
    hi Debug                   ctermfg=3        ctermbg=0       cterm=none

    " Basic
    hi Include                 ctermfg=1        ctermbg=0       cterm=bold
    hi Directory               ctermfg=10       ctermbg=none    cterm=none
    hi Number                  ctermfg=9        ctermbg=none    cterm=none
    hi Float                   ctermfg=9        ctermbg=none    cterm=none
    hi Constant                ctermfg=1        ctermbg=none    cterm=none
    hi Operator                ctermfg=1        ctermbg=none    cterm=none

    " Structures
    hi Structure               ctermfg=13       ctermbg=none    cterm=none
    hi Boolean                 ctermfg=15       ctermbg=none    cterm=none
    hi PreCondit               ctermfg=6        ctermbg=none    cterm=none
    hi Conditional             ctermfg=10       ctermbg=none    cterm=none
    hi Define                  ctermfg=5        ctermbg=none    cterm=none
    hi Function                ctermfg=10       ctermbg=none    cterm=none
    hi Identifier              ctermfg=4        ctermbg=none    cterm=none
    hi Keyword                 ctermfg=1        ctermbg=none    cterm=none
    hi Label                   ctermfg=4        ctermbg=none    cterm=none
    hi PreProc                 ctermfg=1        ctermbg=none    cterm=none
    hi Question                ctermfg=1        ctermbg=none    cterm=none
    hi Repeat                  ctermfg=5        ctermbg=none    cterm=none
    hi Statement               ctermfg=9        ctermbg=none    cterm=none
    hi StorageClass            ctermfg=3        ctermbg=none    cterm=none
    hi String                  ctermfg=4        ctermbg=none    cterm=none
    hi Tag                     ctermfg=9        ctermbg=none    cterm=none
    hi Title                   ctermfg=6        ctermbg=none    cterm=bold
    hi Todo                    ctermfg=3        ctermbg=0       cterm=none
    hi Typedef                 ctermfg=1        ctermbg=none    cterm=none
    hi Type                    ctermfg=3        ctermbg=none    cterm=none

    " Spellcheck
    hi clear SpellBad
    hi SpellBad                ctermfg=8        ctermbg=8       cterm=reverse,bold
    hi SpellCap                ctermfg=8        ctermbg=none    cterm=reverse
    hi SpellRare               ctermfg=8        ctermbg=none    cterm=reverse
    hi SpellLocal              ctermfg=4        ctermbg=none    cterm=reverse

    " User specific
    hi User1                   ctermfg=8        ctermbg=8       cterm=bold,reverse
    hi User2                   ctermfg=none     ctermbg=none    cterm=bold
    hi User3                   ctermfg=8        ctermbg=8       cterm=reverse,bold
""" END GENERAL """



""" PLUGINS """
    " NrrwRg
    hi NrrwRg                  ctermfg=5        ctermbg=11      cterm=bold

    " Signature
    hi Signature               ctermfg=12       ctermbg=none    cterm=bold
    hi Markers                 ctermfg=9        ctermbg=none    cterm=bold

    " Overlength function
    hi OverLength              ctermfg=none     ctermbg=7       cterm=none
    hi ColorColumn             ctermfg=none     ctermbg=0       cterm=bold

    " Easymotion
    hi EasyMotionTarget        ctermfg=3        ctermbg=6       cterm=bold
    hi EasyMotionShade         ctermfg=0        ctermbg=none    cterm=none

    " MiniBufExpl Colors
    hi MBEVisibleNormal        ctermfg=0        ctermbg=0       cterm=none
    hi MBEVisibleChanged       ctermfg=4        ctermbg=0       cterm=none
    hi MBEVisibleActiveNormal  ctermfg=1        ctermbg=0       cterm=none
    hi MBEVisibleActiveChanged ctermfg=1        ctermbg=0       cterm=bold

    " Omni-completion
    hi Pmenu                   ctermfg=6        ctermbg=0       cterm=none
    hi PmenuSel                ctermfg=1        ctermbg=0       cterm=bold
    hi PmenuSbar               ctermfg=0        ctermbg=0       cterm=none
    hi PmenuThumb              ctermfg=0        ctermbg=0       cterm=none
""" END PLUGINS """



""" FILE SPECIFICS """
    " html
    hi htmlTag                 ctermfg=6        ctermbg=none    cterm=none
    hi htmlEndTag              ctermfg=6        ctermbg=none    cterm=none
    hi htmlTagName             ctermfg=1        ctermbg=none    cterm=none
    hi htmlTitle               ctermfg=10       ctermbg=none    cterm=bold
    hi htmlH1                  ctermfg=11       ctermbg=none    cterm=bold
    hi htmlLink                ctermfg=13       ctermbg=none    cterm=none
    hi htmlSpecialChar         ctermfg=10       ctermbg=0       cterm=none
    hi htmlSpecialTagName      ctermfg=5        ctermbg=none    cterm=none

    " css
    hi cssMedia                ctermfg=13       ctermbg=0      cterm=bold
    hi cssMediaKeyword         ctermfg=13       ctermbg=0      cterm=bold
    hi cssMediaType            ctermfg=1        ctermbg=0      cterm=bold
    hi cssMediaProp            ctermfg=1        ctermbg=0      cterm=bold
    hi cssValueLength          ctermfg=12       ctermbg=none   cterm=none
    hi cssValueTime            ctermfg=12       ctermbg=none   cterm=none
    hi cssColor                ctermfg=none     ctermbg=none   cterm=none
    hi cssPseudoClassId        ctermfg=none     ctermbg=0      cterm=none
    hi cssClassName            ctermfg=6        ctermbg=none   cterm=bold
    hi cssIncludeKeyword       ctermfg=none     ctermbg=0      cterm=bold
    hi cssUnitDecorators       ctermfg=4        ctermbg=none   cterm=none
    hi cssVendor               ctermfg=5        ctermbg=none   cterm=none
    hi cssBraces               ctermfg=3        ctermbg=none   cterm=bold
    hi cssImportant            ctermfg=none     ctermbg=1      cterm=none
    hi cssNoise                ctermfg=none     ctermbg=none   cterm=bold
    hi cssAttrComma            ctermfg=none     ctermbg=none   cterm=bold
    hi cssIdentifier           ctermfg=10       ctermbg=none   cterm=bold
    hi cssTagName              ctermfg=1        ctermbg=none   cterm=bold
    hi cssSelectorOp           ctermfg=none     ctermbg=none   cterm=bold

    " JS
    hi javascriptBraces        ctermfg=1        ctermbg=none   cterm=bold
    hi javascriptParens        ctermfg=3        ctermbg=none   cterm=bold
    hi javascriptNumber        ctermfg=1        ctermbg=none   cterm=none
    hi javascriptConditional   ctermfg=9        ctermbg=none   cterm=none


    " xml
    hi xmlTag                  ctermfg=6        ctermbg=none    cterm=none
    hi xmlEndTag               ctermfg=6        ctermbg=none    cterm=none
    hi xmlTagName              ctermfg=1        ctermbg=none    cterm=none
""" END FILE SPECIFICS """



""" STATUSLINE """
    hi StatusLine              ctermfg=8        ctermbg=8       cterm=reverse
    hi StatusLineNC            ctermfg=0        ctermbg=0       cterm=none
    hi StatusModFlag           ctermfg=1        ctermbg=13      cterm=bold
    hi StatusRO                ctermfg=9        ctermbg=13      cterm=bold
    hi StatusHLP               ctermfg=2        ctermbg=13      cterm=bold
    hi StatusPRV               ctermfg=5        ctermbg=13      cterm=bold
    hi StatusFTP               ctermfg=4        ctermbg=13      cterm=bold
""" END STATUSLINE """
