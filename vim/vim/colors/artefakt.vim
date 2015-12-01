" vim color file
" 
" Author: Adrian Juszczak
"
" Note:
" * some colors from `vitamins.vim` by Henrique C. Alves
" * some other things from `github.vim` by Anthony Carapetis
       
set background=dark

set cursorline

hi clear

if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name="artefakt"

hi Normal         guibg=#242424   guifg=#f6f3f0   gui=none    ctermbg=235   ctermfg=254

" {{{ cursor
hi Cursor         guibg=#656565   guifg=NONE      gui=none    ctermbg=242   ctermfg=NONE

if version >= 700
  hi CursorLine   guibg=#2d2d2d   guifg=NONE      gui=none    ctermbg=236   ctermfg=NONE  cterm=NONE
  hi CursorColumn guibg=#2d2d2d   guifg=NONE      gui=none    ctermbg=236   ctermfg=NONE  cterm=NONE
endif
" }}}

" {{{ completion menus
if version >= 700
  hi Pmenu        guibg=#444444   guifg=#f6f3e8               ctermbg=242
  hi PmenuSel     guibg=#cdd129   guifg=#000000               ctermbg=184   ctermfg=0

  hi WildMenu     guifg=#7fbdff   guibg=#425c78   gui=none
  hi PmenuSbar    guibg=#000000   guifg=#444444
  hi PmenuThumb   guibg=#aaaaaa   guifg=#aaaaaa
endif
" }}}

" {{{ folding / line numbering / status lines
hi Folded         guibg=#767676   guifg=#303030   gui=none    ctermbg=243   ctermfg=236
hi vimFold        guibg=#767676   guifg=#303030   gui=none    ctermbg=243   ctermfg=236
hi FoldColumn     guibg=#767676   guifg=#303030   gui=none    ctermbg=243   ctermfg=236

hi LineNr         guibg=#111111   guifg=#5c5a4f   gui=none    ctermbg=232   ctermfg=239
hi NonText        guibg=#303030   guifg=#808080   gui=none    ctermbg=237   ctermfg=242

hi VertSplit      guibg=#444444   guifg=#444444   gui=none    ctermbg=238   ctermfg=238
hi StatusLine     guibg=#444444   guifg=#f6f3e8   gui=italic  ctermbg=238   ctermfg=255
hi StatusLineNC   guibg=#444444   guifg=#857b6f   gui=none    ctermbg=238   ctermfg=234
" }}}

" {{{ search, visual, etc
hi Visual         guibg=#444444                   gui=none    ctermbg=238   ctermfg=NONE

hi VisualNOS      guifg=#FFFFFF   guibg=#204a87   gui=none
hi IncSearch	    guibg=#ff5d28   guifg=#000000   gui=italic
hi Search         guibg=#cdd129   guifg=#000000   gui=italic
" }}}

" {{{ misc
hi ModeMsg	                      guifg=#ef5939
hi MoreMsg	                      guifg=#ef5939
hi Question                                                   ctermfg=65    ctermbg=NONE  cterm=NONE

hi Title          guibg=NONE      guifg=#f6f3e8   gui=bold
" ^M
hi SpecialKey     guibg=#343434   guifg=#808080   gui=none
hi WarningMsg	    guifg=#ef5939

if version >= 700
  hi MatchParent  guibg=#857b6f   guifg=#f6f3e8   gui=bold    ctermbg=059
endif

hi Directory                      guifg=#00af87   gui=none                  ctermfg=036

" }}}

" {{{ syntax groups
hi Comment                        guifg=#808080   gui=italic                ctermfg=244

hi Constant                       guifg=#008787   gui=none                  ctermfg=030
  hi String                       guifg=#008700   gui=italic                ctermfg=028
  hi Character                    guifg=#008700   gui=italic                ctermfg=028
  hi Number                       guifg=#008787   gui=none                  ctermfg=030
  hi Boolean                      guifg=#008700   gui=none                  ctermfg=028
  hi Float                        guifg=#008700   gui=none                  ctermfg=028

hi Identifier                     guifg=#ff5d28   gui=none                  ctermfg=202
  hi Function                     guifg=#cdd129   gui=none                  ctermfg=184

hi Statement                      guifg=#af5f5f   gui=none                  ctermfg=131
  hi Conditional                  guifg=#af5f5f   gui=none                  ctermfg=131
  hi Repeat                       guifg=#af5f5f   gui=none                  ctermfg=131
  hi Label                        guifg=#af5f5f   gui=none                  ctermfg=131
  hi Operator                     guifg=#af5f5f   gui=none                  ctermfg=131
  hi Keyword                      guifg=#cdd129   gui=none                  ctermfg=184
  hi Exception                    guifg=#af5f00   gui=none                  ctermfg=130

hi PreProc                        guifg=#ede39e   gui=none                  ctermfg=187
  hi Include                      guifg=#0087ff   gui=none                  ctermfg=033
  hi Define                       guifg=#0087ff   gui=none                  ctermfg=033
  hi Macro                        guifg=#0087ff   gui=none                  ctermfg=033
  hi PreCondit                    guifg=#0087ff   gui=none                  ctermfg=033

hi Type                           guifg=#cdd129   gui=none                  ctermfg=184
  hi StorageClass                 guifg=#cdd129   gui=none                  ctermfg=184
  hi Structure                    guifg=#cdd129   gui=none                  ctermfg=184
  hi Typedef                      guifg=#cdd129   gui=none                  ctermfg=184

hi Special                        guifg=#008700   gui=none                  ctermfg=159
  hi SpecialChar                  guifg=#008700   gui=none                  ctermfg=159
  hi Tag                          guifg=#008700   gui=none                  ctermfg=159
  hi Delimiter                    guifg=#008700   gui=none                  ctermfg=159
  hi SpecialComment               guifg=#008700   gui=none                  ctermfg=159
  hi Debug                        guifg=#008700   gui=none                  ctermfg=159

hi Underlined                     guifg=#008700   gui=none                  ctermfg=159

hi Error                          guifg=#800000   gui=italic                ctermfg=001

hi Todo                           guifg=#8f8f8f   gui=italic                ctermfg=245

" *Comment	      any comment
"
" *Constant	      any constant
"  String		      a string constant: "this is a string"
"  Character    	a character constant: 'c', '\n'
"  Number		      a number constant: 234, 0xff
"  Boolean	      a boolean constant: TRUE, false
"  Float		      a floating point constant: 2.3e10
"
" *Identifier	    any variable name
"  Function	      function name (also: methods for classes)
"
" *Statement	    any statement
"  Conditional  	if, then, else, endif, switch, etc.
"  Repeat		      for, do, while, etc.
"  Label		      case, default, etc.
"  Operator	      "sizeof", "+", "*", etc.
"  Keyword	      any other keyword
"  Exception	    try, catch, throw
"
" *PreProc	      generic Preprocessor
"  Include	      preprocessor #include
"  Define		      preprocessor #define
"  Macro		      same as Define
"  PreCondit	    preprocessor #if, #else, #endif, etc.
"
" *Type		        int, long, char, etc.
"  StorageClass	  static, register, volatile, etc.
"  Structure	    struct, union, enum, etc.
"  Typedef	      a typedef
"
" *Special	      any special symbol
"  SpecialChar  	special character in a constant
"  Tag		        you can use CTRL-] on this
"  Delimiter	    character that needs attention
"  SpecialComment	special things inside a comment
"  Debug		      debugging statements
"
" *Underlined	    text that stands out, HTML links
"
" *Ignore	      	left blank, hidden  |hl-Ignore|
"
" *Error		      any erroneous construct
"
" *Todo		        anything that needs extra attention;
"                 mostly the keywords TODO FIXME and XXX

" }}}

" {{{ diff
hi DiffAdd    			guibg=#005000 	              gui=none    ctermbg=022
hi DiffDelete 			guibg=#500000 guifg=#242424   gui=none    ctermbg=124   ctermfg=235
hi DiffChange 			guibg=#505000 	              gui=none    ctermbg=058
hi DiffText   			guibg=#005000 guifg=#ff8700               ctermbg=022   ctermfg=208
" }}}

" {{{ gitgutter
hi clear SignColumn
hi GitGutterAdd                   guibg=#111111  guifg=#008700   gui=none    ctermbg=232   ctermbg=028
hi GitGutterChange                guibg=#111111  guifg=#cdd129   gui=none    ctermbg=232   ctermbg=184
hi GitGutterDelete                guibg=#111111  guifg=#cd0000   gui=none    ctermbg=232   ctermbg=009
hi GitGutterChangeDelete          guibg=#111111  guifg=#cd0000   gui=none    ctermbg=232   ctermbg=009

hi GitGutterAddLine               guibg=#005000
hi GitGutterChangeLine            guibg=#505000
hi GitGutterDeleteLine            guibg=#500000
hi GitGutterChangeDeleteLine      guibg=#500000
" }}}

" {{{ Spelling
hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf
" }}}

" TODO: TabLine, TabLineFill, TabLineSel
" {{{ tabs (non-gui0)
hi TabLine		      guibg=#d0d0d0 guifg=#444444   gui=none    ctermbg=252   ctermfg=238
hi TabLineFill	    guibg=#d0d0d0 guifg=#444444   gui=none    ctermbg=252   ctermfg=238
hi TabLineSel	                    guifg=#444444   gui=bold    ctermbg=252   ctermfg=238
" }}}

" TODO: ALL
" {{{ ctrlp
" Highlighting:~
" * For the CtrlP buffer:
"     CtrlPNoEntries : the message when no match is found (Error)
"     CtrlPMatch     : the matched pattern (Identifier)
"     CtrlPLinePre   : the line prefix '>' in the match window
"     CtrlPPrtBase   : the prompt's base (Comment)
"     CtrlPPrtText   : the prompt's text (|hl-Normal|)
"     CtrlPPrtCursor : the prompt's cursor when moving over the text (Constant)
"
" * In extensions:
"     CtrlPTabExtra  : the part of each line that's not matched against (Comment)
"     CtrlPBufName   : the buffer name an entry belongs to (|hl-Directory|)
"     CtrlPTagKind   : the kind of the tag in buffer-tag mode (|hl-Title|)
"     CtrlPqfLineCol : the line and column numbers in quickfix mode (Comment)
"     CtrlPUndoT     : the elapsed time in undo mode (|hl-Directory|)
"     CtrlPUndoBr    : the square brackets [] in undo mode (Comment)
"     CtrlPUndoNr    : the undo number inside [] in undo mode (String)
"     CtrlPUndoSv    : the point where the file was saved (Comment)
"     CtrlPUndoPo    : the current position in the undo tree (|hl-Title|)
"     CtrlPBookmark  : the name of the bookmark (Identifier)
"
" Statuslines:~
" * Highlight groups:
"     CtrlPMode1 : 'file' or 'path' or 'line', and the current mode (Character)
"     CtrlPMode2 : 'prt' or 'win', 'regex', the working directory (|hl-LineNr|)
"     CtrlPStats : the scanning status (Function)
" }}}

" TODO: ALL
" {{{ syntastic
" hi SyntasticErrorSign 
" hi SyntasticWarningSign
" links to 'SyntasticErrorSign' by default
" hi SyntasticStyleErrorSign
" links to 'SyntasticWarningSign' by default
" hi SyntasticStyleWarningSign
" hi SyntasticErrorLine 					guibg=#800000
" hi SyntasticWarningLine					guibg=#808000
" links to 'SyntasticErrorLine' by default
" hi SyntasticStyleErrorLine
" links to 'SyntasticWarningLine' by default
" hi SyntasticStyleWarningLine
" }}}

" vim: sw=2 ts=2 foldmethod=marker

