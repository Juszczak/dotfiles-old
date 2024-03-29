" vim color file
"
" Author: Adrian Juszczak
" (https://git.io/dotfiles)
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

" {{{ ruler
hi ColorColumn    guibg=#303030   guifg=#808080   gui=none    ctermbg=237   ctermfg=242
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
hi SpecialKey     guibg=NONE      guifg=#585858   gui=none    ctermfg=240   ctermbg=NONE  cterm=NONE
hi WarningMsg	    guifg=#ef5939

if version >= 700
  hi MatchParent  guibg=#857b6f   guifg=#f6f3e8   gui=bold    ctermbg=059
endif

hi Directory                      guifg=#af875f   gui=none                  ctermfg=137

" }}}

" {{{ syntax groups
hi Comment												guifg=#808080 	gui=italic                ctermfg=244

hi Constant 											guifg=#008787 	gui=none                  ctermfg=030
	hi String 											guifg=#ff8700 	gui=italic                ctermfg=028
	hi Character										guifg=#ff8700   gui=italic                ctermfg=028
	hi Boolean											guifg=#00af00   gui=none                  ctermfg=028
	hi Number 											guifg=#008787   gui=none                  ctermfg=030
	hi Float												guifg=#008700   gui=none                  ctermfg=028

hi Identifier                     guifg=#ff5d28   gui=none                  ctermfg=202
  hi Function                     guifg=#cdd129   gui=none                  ctermfg=184

hi Statement                      guifg=#af5f5f   gui=none                  ctermfg=131
  hi Conditional                  guifg=#af5f5f   gui=none                  ctermfg=131
  hi Repeat                       guifg=#af5f5f   gui=none                  ctermfg=131
  hi Label                        guifg=#af87ff   gui=none                  ctermfg=131
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
hi GitGutterAdd                   guibg=#111111  guifg=#008700   gui=none    ctermbg=232   ctermfg=028
hi GitGutterChange                guibg=#111111  guifg=#cdd129   gui=none    ctermbg=232   ctermfg=184
hi GitGutterDelete                guibg=#111111  guifg=#cd0000   gui=none    ctermbg=232   ctermfg=009
hi GitGutterChangeDelete          guibg=#111111  guifg=#cdd129   gui=none    ctermbg=232   ctermfg=184

hi GitGutterAddLine               guibg=#005000
hi GitGutterChangeLine            guibg=#505000
hi GitGutterDeleteLine            guibg=#500000
hi GitGutterChangeDeleteLine      guibg=#500000
" }}}

" {{{ spelling
hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf
" }}}

" {{{ nerdtree basic

hi NERDTreeCWD                  guibg=NONE guifg=#87d700 gui=NONE ctermbg=NONE ctermfg=112 cterm=NONE
hi NERDTreeExecFile             guibg=NONE guifg=#87ff00 gui=NONE ctermbg=NONE ctermfg=118 cterm=NONE
hi NERDTreeFile                 guibg=NONE guifg=#d0d0d0 gui=NONE ctermbg=NONE ctermfg=252 cterm=NONE
hi NERDTreeDir                  guibg=NONE guifg=#af875f gui=NONE ctermbg=NONE ctermfg=137 cterm=bold
hi NERDTreeDirSlash             guibg=NONE guifg=#ff5d28 gui=NONE ctermbg=NONE ctermfg=202 cterm=NONE

hi NERDTreeBookmarkName         guibg=NONE guifg=#ff5d28 gui=NONE ctermbg=NONE ctermfg=202 cterm=NONE

hi NERDTreeLinkFile             guibg=NONE guifg=#0087d7 gui=NONE ctermbg=NONE ctermfg=032 cterm=NONE
hi NERDTreeLinkDir              guibg=NONE guifg=#af875f gui=NONE ctermbg=NONE ctermfg=137 cterm=NONE
hi NERDTreeLinkTarget           guibg=NONE guifg=#cdd129 gui=NONE ctermbg=NONE ctermfg=184 cterm=NONE

hi NERDTreeOpenable             guibg=NONE guifg=#87d700 gui=NONE ctermbg=NONE ctermfg=112 cterm=NONE
hi NERDTreeClosable             guibg=NONE guifg=#87d700 gui=NONE ctermbg=NONE ctermfg=112 cterm=NONE

" }}}

" {{{ nerdtree filetypes

" gitconfig, gitignore
au FileType nerdtree hi gitconf guibg=NONE guifg=#f54d27 ctermbg=NONE ctermfg=166

" *.ts
au FileType nerdtree hi ts      guibg=NONE guifg=#0087ff ctermbg=NONE ctermfg=033

" *.spec.ts
au FileType nerdtree hi spects  guibg=NONE guifg=#875fd7 ctermbg=NONE ctermfg=098

" *.styl
au FileType nerdtree hi styl    guibg=NONE guifg=#5fff5f ctermbg=NONE ctermfg=083

" *.js
au FileType nerdtree hi js      guibg=NONE guifg=#f0db4f ctermbg=NONE ctermfg=227

" *.coffee
au FileType nerdtree hi coffee  guibg=NONE guifg=#ffaf00 ctermbg=NONE ctermfg=214

" *.json
au FileType nerdtree hi json    guibg=NONE guifg=#5faf5f ctermbg=NONE ctermfg=071

" *.hbs
au FileType nerdtree hi hbs     guibg=NONE guifg=#ff8700 ctermbg=NONE ctermfg=208

" *.html
au FileType nerdtree hi html    guibg=NONE guifg=#ff8700 ctermbg=NONE ctermfg=208

" *.css
au FileType nerdtree hi css     guibg=NONE guifg=#3074b1 ctermbg=NONE ctermfg=032

" *.less
au FileType nerdtree hi less    guibg=NONE guifg=#3074b1 ctermbg=NONE ctermfg=032

" *.vim
au FileType nerdtree hi vim     guibg=NONE guifg=#019833 ctermbg=NONE ctermfg=040

" *vimrc
au FileType nerdtree hi vim     guibg=NONE guifg=#019833 ctermbg=NONE ctermfg=040

" *.tmux
au FileType nerdtree hi tmux    guibg=NONE guifg=#1bb91f ctermbg=NONE ctermfg=076

" *.sh
au FileType nerdtree hi sh      guibg=NONE guifg=#008700 ctermbg=NONE ctermfg=028

" inputrc
au FileType nerdtree hi inputrc guibg=NONE guifg=#008700 ctermbg=NONE ctermfg=028

" bashrc
au FileType nerdtree hi bash    guibg=NONE guifg=#008700 ctermbg=NONE ctermfg=028

" *.md
au FileType nerdtree hi md      guibg=NONE guifg=#ede39e ctermbg=NONE ctermfg=187

" LICENSE
au FileType nerdtree hi license guibg=NONE guifg=#8f8f8f ctermbg=NONE ctermfg=245

" *.node
au FileType nerdtree hi node    guibg=NONE guifg=#80bd01 ctermbg=NONE ctermfg=076

" }}}

" {{{ indent guides

hi IndentGuidesOdd  guibg=#303030 guifg=#3a3a3a   gui=none    ctermbg=235   ctermfg=236
hi IndentGuidesEven guibg=#3a3a3a guifg=#303030   gui=none    ctermbg=236   ctermfg=235

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

" TODO:
" {{{ nerdtree other

" hi def link NERDTreeGitStatusModified Special
" hi def link NERDTreeGitStatusStaged Function
" hi def link NERDTreeGitStatusRenamed Title
" hi def link NERDTreeGitStatusUnmerged Label
" hi def link NERDTreeGitStatusUntracked Comment
" hi def link NERDTreeGitStatusDirDirty Tag
" hi def link NERDTreeGitStatusDirClean DiffAdd

" }}}

" {{{ colors references
hi x016_Grey0             ctermfg=016 guifg=#000000
hi x017_NavyBlue          ctermfg=017 guifg=#00005f
hi x018_DarkBlue          ctermfg=018 guifg=#000087
hi x019_Blue3             ctermfg=019 guifg=#0000af
hi x020_Blue3             ctermfg=020 guifg=#0000d7
hi x021_Blue1             ctermfg=021 guifg=#0000ff
hi x022_DarkGreen         ctermfg=022 guifg=#005f00
hi x023_DeepSkyBlue4      ctermfg=023 guifg=#005f5f
hi x024_DeepSkyBlue4      ctermfg=024 guifg=#005f87
hi x025_DeepSkyBlue4      ctermfg=025 guifg=#005faf
hi x026_DodgerBlue3       ctermfg=026 guifg=#005fd7
hi x027_DodgerBlue2       ctermfg=027 guifg=#005fff
hi x028_Green4            ctermfg=028 guifg=#008700
hi x029_SpringGreen4      ctermfg=029 guifg=#00875f
hi x030_Turquoise4        ctermfg=030 guifg=#008787
hi x031_DeepSkyBlue3      ctermfg=031 guifg=#0087af
hi x032_DeepSkyBlue3      ctermfg=032 guifg=#0087d7
hi x033_DodgerBlue1       ctermfg=033 guifg=#0087ff
hi x034_Green3            ctermfg=034 guifg=#00af00
hi x035_SpringGreen3      ctermfg=035 guifg=#00af5f
hi x036_DarkCyan          ctermfg=036 guifg=#00af87
hi x037_LightSeaGreen     ctermfg=037 guifg=#00afaf
hi x038_DeepSkyBlue2      ctermfg=038 guifg=#00afd7
hi x039_DeepSkyBlue1      ctermfg=039 guifg=#00afff
hi x040_Green3            ctermfg=040 guifg=#00d700
hi x041_SpringGreen3      ctermfg=041 guifg=#00d75f
hi x042_SpringGreen2      ctermfg=042 guifg=#00d787
hi x043_Cyan3             ctermfg=043 guifg=#00d7af
hi x044_DarkTurquoise     ctermfg=044 guifg=#00d7d7
hi x045_Turquoise2        ctermfg=045 guifg=#00d7ff
hi x046_Green1            ctermfg=046 guifg=#00ff00
hi x047_SpringGreen2      ctermfg=047 guifg=#00ff5f
hi x048_SpringGreen1      ctermfg=048 guifg=#00ff87
hi x049_MediumSpringGreen ctermfg=049 guifg=#00ffaf
hi x050_Cyan2             ctermfg=050 guifg=#00ffd7
hi x051_Cyan1             ctermfg=051 guifg=#00ffff
hi x052_DarkRed           ctermfg=052 guifg=#5f0000
hi x053_DeepPink4         ctermfg=053 guifg=#5f005f
hi x054_Purple4           ctermfg=054 guifg=#5f0087
hi x055_Purple4           ctermfg=055 guifg=#5f00af
hi x056_Purple3           ctermfg=056 guifg=#5f00d7
hi x057_BlueViolet        ctermfg=057 guifg=#5f00ff
hi x058_Orange4           ctermfg=058 guifg=#5f5f00
hi x059_Grey37            ctermfg=059 guifg=#5f5f5f
hi x060_MediumPurple4     ctermfg=060 guifg=#5f5f87
hi x061_SlateBlue3        ctermfg=061 guifg=#5f5faf
hi x062_SlateBlue3        ctermfg=062 guifg=#5f5fd7
hi x063_RoyalBlue1        ctermfg=063 guifg=#5f5fff
hi x064_Chartreuse4       ctermfg=064 guifg=#5f8700
hi x065_DarkSeaGreen4     ctermfg=065 guifg=#5f875f
hi x066_PaleTurquoise4    ctermfg=066 guifg=#5f8787
hi x067_SteelBlue         ctermfg=067 guifg=#5f87af
hi x068_SteelBlue3        ctermfg=068 guifg=#5f87d7
hi x069_CornflowerBlue    ctermfg=069 guifg=#5f87ff
hi x070_Chartreuse3       ctermfg=070 guifg=#5faf00
hi x071_DarkSeaGreen4     ctermfg=071 guifg=#5faf5f
hi x072_CadetBlue         ctermfg=072 guifg=#5faf87
hi x073_CadetBlue         ctermfg=073 guifg=#5fafaf
hi x074_SkyBlue3          ctermfg=074 guifg=#5fafd7
hi x075_SteelBlue1        ctermfg=075 guifg=#5fafff
hi x076_Chartreuse3       ctermfg=076 guifg=#5fd700
hi x077_PaleGreen3        ctermfg=077 guifg=#5fd75f
hi x078_SeaGreen3         ctermfg=078 guifg=#5fd787
hi x079_Aquamarine3       ctermfg=079 guifg=#5fd7af
hi x080_MediumTurquoise   ctermfg=080 guifg=#5fd7d7
hi x081_SteelBlue1        ctermfg=081 guifg=#5fd7ff
hi x082_Chartreuse2       ctermfg=082 guifg=#5fff00
hi x083_SeaGreen2         ctermfg=083 guifg=#5fff5f
hi x084_SeaGreen1         ctermfg=084 guifg=#5fff87
hi x085_SeaGreen1         ctermfg=085 guifg=#5fffaf
hi x086_Aquamarine1       ctermfg=086 guifg=#5fffd7
hi x087_DarkSlateGray2    ctermfg=087 guifg=#5fffff
hi x088_DarkRed           ctermfg=088 guifg=#870000
hi x089_DeepPink4         ctermfg=089 guifg=#87005f
hi x090_DarkMagenta       ctermfg=090 guifg=#870087
hi x091_DarkMagenta       ctermfg=091 guifg=#8700af
hi x092_DarkViolet        ctermfg=092 guifg=#8700d7
hi x093_Purple            ctermfg=093 guifg=#8700ff
hi x094_Orange4           ctermfg=094 guifg=#875f00
hi x095_LightPink4        ctermfg=095 guifg=#875f5f
hi x096_Plum4             ctermfg=096 guifg=#875f87
hi x097_MediumPurple3     ctermfg=097 guifg=#875faf
hi x098_MediumPurple3     ctermfg=098 guifg=#875fd7
hi x099_SlateBlue1        ctermfg=099 guifg=#875fff
hi x100_Yellow4           ctermfg=100 guifg=#878700
hi x101_Wheat4            ctermfg=101 guifg=#87875f
hi x102_Grey53            ctermfg=102 guifg=#878787
hi x103_LightSlateGrey    ctermfg=103 guifg=#8787af
hi x104_MediumPurple      ctermfg=104 guifg=#8787d7
hi x105_LightSlateBlue    ctermfg=105 guifg=#8787ff
hi x106_Yellow4           ctermfg=106 guifg=#87af00
hi x107_DarkOliveGreen3   ctermfg=107 guifg=#87af5f
hi x108_DarkSeaGreen      ctermfg=108 guifg=#87af87
hi x109_LightSkyBlue3     ctermfg=109 guifg=#87afaf
hi x110_LightSkyBlue3     ctermfg=110 guifg=#87afd7
hi x111_SkyBlue2          ctermfg=111 guifg=#87afff
hi x112_Chartreuse2       ctermfg=112 guifg=#87d700
hi x113_DarkOliveGreen3   ctermfg=113 guifg=#87d75f
hi x114_PaleGreen3        ctermfg=114 guifg=#87d787
hi x115_DarkSeaGreen3     ctermfg=115 guifg=#87d7af
hi x116_DarkSlateGray3    ctermfg=116 guifg=#87d7d7
hi x117_SkyBlue1          ctermfg=117 guifg=#87d7ff
hi x118_Chartreuse1       ctermfg=118 guifg=#87ff00
hi x119_LightGreen        ctermfg=119 guifg=#87ff5f
hi x120_LightGreen        ctermfg=120 guifg=#87ff87
hi x121_PaleGreen1        ctermfg=121 guifg=#87ffaf
hi x122_Aquamarine1       ctermfg=122 guifg=#87ffd7
hi x123_DarkSlateGray1    ctermfg=123 guifg=#87ffff
hi x124_Red3              ctermfg=124 guifg=#af0000
hi x125_DeepPink4         ctermfg=125 guifg=#af005f
hi x126_MediumVioletRed   ctermfg=126 guifg=#af0087
hi x127_Magenta3          ctermfg=127 guifg=#af00af
hi x128_DarkViolet        ctermfg=128 guifg=#af00d7
hi x129_Purple            ctermfg=129 guifg=#af00ff
hi x130_DarkOrange3       ctermfg=130 guifg=#af5f00
hi x131_IndianRed         ctermfg=131 guifg=#af5f5f
hi x132_HotPink3          ctermfg=132 guifg=#af5f87
hi x133_MediumOrchid3     ctermfg=133 guifg=#af5faf
hi x134_MediumOrchid      ctermfg=134 guifg=#af5fd7
hi x135_MediumPurple2     ctermfg=135 guifg=#af5fff
hi x136_DarkGoldenrod     ctermfg=136 guifg=#af8700
hi x137_LightSalmon3      ctermfg=137 guifg=#af875f
hi x138_RosyBrown         ctermfg=138 guifg=#af8787
hi x139_Grey63            ctermfg=139 guifg=#af87af
hi x140_MediumPurple2     ctermfg=140 guifg=#af87d7
hi x141_MediumPurple1     ctermfg=141 guifg=#af87ff
hi x142_Gold3             ctermfg=142 guifg=#afaf00
hi x143_DarkKhaki         ctermfg=143 guifg=#afaf5f
hi x144_NavajoWhite3      ctermfg=144 guifg=#afaf87
hi x145_Grey69            ctermfg=145 guifg=#afafaf
hi x146_LightSteelBlue3   ctermfg=146 guifg=#afafd7
hi x147_LightSteelBlue    ctermfg=147 guifg=#afafff
hi x148_Yellow3           ctermfg=148 guifg=#afd700
hi x149_DarkOliveGreen3   ctermfg=149 guifg=#afd75f
hi x150_DarkSeaGreen3     ctermfg=150 guifg=#afd787
hi x151_DarkSeaGreen2     ctermfg=151 guifg=#afd7af
hi x152_LightCyan3        ctermfg=152 guifg=#afd7d7
hi x153_LightSkyBlue1     ctermfg=153 guifg=#afd7ff
hi x154_GreenYellow       ctermfg=154 guifg=#afff00
hi x155_DarkOliveGreen2   ctermfg=155 guifg=#afff5f
hi x156_PaleGreen1        ctermfg=156 guifg=#afff87
hi x157_DarkSeaGreen2     ctermfg=157 guifg=#afffaf
hi x158_DarkSeaGreen1     ctermfg=158 guifg=#afffd7
hi x159_PaleTurquoise1    ctermfg=159 guifg=#afffff
hi x160_Red3              ctermfg=160 guifg=#d70000
hi x161_DeepPink3         ctermfg=161 guifg=#d7005f
hi x162_DeepPink3         ctermfg=162 guifg=#d70087
hi x163_Magenta3          ctermfg=163 guifg=#d700af
hi x164_Magenta3          ctermfg=164 guifg=#d700d7
hi x165_Magenta2          ctermfg=165 guifg=#d700ff
hi x166_DarkOrange3       ctermfg=166 guifg=#d75f00
hi x167_IndianRed         ctermfg=167 guifg=#d75f5f
hi x168_HotPink3          ctermfg=168 guifg=#d75f87
hi x169_HotPink2          ctermfg=169 guifg=#d75faf
hi x170_Orchid            ctermfg=170 guifg=#d75fd7
hi x171_MediumOrchid1     ctermfg=171 guifg=#d75fff
hi x172_Orange3           ctermfg=172 guifg=#d78700
hi x173_LightSalmon3      ctermfg=173 guifg=#d7875f
hi x174_LightPink3        ctermfg=174 guifg=#d78787
hi x175_Pink3             ctermfg=175 guifg=#d787af
hi x176_Plum3             ctermfg=176 guifg=#d787d7
hi x177_Violet            ctermfg=177 guifg=#d787ff
hi x178_Gold3             ctermfg=178 guifg=#d7af00
hi x179_LightGoldenrod3   ctermfg=179 guifg=#d7af5f
hi x180_Tan               ctermfg=180 guifg=#d7af87
hi x181_MistyRose3        ctermfg=181 guifg=#d7afaf
hi x182_Thistle3          ctermfg=182 guifg=#d7afd7
hi x183_Plum2             ctermfg=183 guifg=#d7afff
hi x184_Yellow3           ctermfg=184 guifg=#d7d700
hi x185_Khaki3            ctermfg=185 guifg=#d7d75f
hi x186_LightGoldenrod2   ctermfg=186 guifg=#d7d787
hi x187_LightYellow3      ctermfg=187 guifg=#d7d7af
hi x188_Grey84            ctermfg=188 guifg=#d7d7d7
hi x189_LightSteelBlue1   ctermfg=189 guifg=#d7d7ff
hi x190_Yellow2           ctermfg=190 guifg=#d7ff00
hi x191_DarkOliveGreen1   ctermfg=191 guifg=#d7ff5f
hi x192_DarkOliveGreen1   ctermfg=192 guifg=#d7ff87
hi x193_DarkSeaGreen1     ctermfg=193 guifg=#d7ffaf
hi x194_Honeydew2         ctermfg=194 guifg=#d7ffd7
hi x195_LightCyan1        ctermfg=195 guifg=#d7ffff
hi x196_Red1              ctermfg=196 guifg=#ff0000
hi x197_DeepPink2         ctermfg=197 guifg=#ff005f
hi x198_DeepPink1         ctermfg=198 guifg=#ff0087
hi x199_DeepPink1         ctermfg=199 guifg=#ff00af
hi x200_Magenta2          ctermfg=200 guifg=#ff00d7
hi x201_Magenta1          ctermfg=201 guifg=#ff00ff
hi x202_OrangeRed1        ctermfg=202 guifg=#ff5f00
hi x203_IndianRed1        ctermfg=203 guifg=#ff5f5f
hi x204_IndianRed1        ctermfg=204 guifg=#ff5f87
hi x205_HotPink           ctermfg=205 guifg=#ff5faf
hi x206_HotPink           ctermfg=206 guifg=#ff5fd7
hi x207_MediumOrchid1     ctermfg=207 guifg=#ff5fff
hi x208_DarkOrange        ctermfg=208 guifg=#ff8700
hi x209_Salmon1           ctermfg=209 guifg=#ff875f
hi x210_LightCoral        ctermfg=210 guifg=#ff8787
hi x211_PaleVioletRed1    ctermfg=211 guifg=#ff87af
hi x212_Orchid2           ctermfg=212 guifg=#ff87d7
hi x213_Orchid1           ctermfg=213 guifg=#ff87ff
hi x214_Orange1           ctermfg=214 guifg=#ffaf00
hi x215_SandyBrown        ctermfg=215 guifg=#ffaf5f
hi x216_LightSalmon1      ctermfg=216 guifg=#ffaf87
hi x217_LightPink1        ctermfg=217 guifg=#ffafaf
hi x218_Pink1             ctermfg=218 guifg=#ffafd7
hi x219_Plum1             ctermfg=219 guifg=#ffafff
hi x220_Gold1             ctermfg=220 guifg=#ffd700
hi x221_LightGoldenrod2   ctermfg=221 guifg=#ffd75f
hi x222_LightGoldenrod2   ctermfg=222 guifg=#ffd787
hi x223_NavajoWhite1      ctermfg=223 guifg=#ffd7af
hi x224_MistyRose1        ctermfg=224 guifg=#ffd7d7
hi x225_Thistle1          ctermfg=225 guifg=#ffd7ff
hi x226_Yellow1           ctermfg=226 guifg=#ffff00
hi x227_LightGoldenrod1   ctermfg=227 guifg=#ffff5f
hi x228_Khaki1            ctermfg=228 guifg=#ffff87
hi x229_Wheat1            ctermfg=229 guifg=#ffffaf
hi x230_Cornsilk1         ctermfg=230 guifg=#ffffd7
hi x231_Grey100           ctermfg=231 guifg=#ffffff
hi x232_Grey3             ctermfg=232 guifg=#080808
hi x233_Grey7             ctermfg=233 guifg=#121212
hi x234_Grey11            ctermfg=234 guifg=#1c1c1c
hi x235_Grey15            ctermfg=235 guifg=#262626
hi x236_Grey19            ctermfg=236 guifg=#303030
hi x237_Grey23            ctermfg=237 guifg=#3a3a3a
hi x238_Grey27            ctermfg=238 guifg=#444444
hi x239_Grey30            ctermfg=239 guifg=#4e4e4e
hi x240_Grey35            ctermfg=240 guifg=#585858
hi x241_Grey39            ctermfg=241 guifg=#626262
hi x242_Grey42            ctermfg=242 guifg=#6c6c6c
hi x243_Grey46            ctermfg=243 guifg=#767676
hi x244_Grey50            ctermfg=244 guifg=#808080
hi x245_Grey54            ctermfg=245 guifg=#8a8a8a
hi x246_Grey58            ctermfg=246 guifg=#949494
hi x247_Grey62            ctermfg=247 guifg=#9e9e9e
hi x248_Grey66            ctermfg=248 guifg=#a8a8a8
hi x249_Grey70            ctermfg=249 guifg=#b2b2b2
hi x250_Grey74            ctermfg=250 guifg=#bcbcbc
hi x251_Grey78            ctermfg=251 guifg=#c6c6c6
hi x252_Grey82            ctermfg=252 guifg=#d0d0d0
hi x253_Grey85            ctermfg=253 guifg=#dadada
hi x254_Grey89            ctermfg=254 guifg=#e4e4e4
hi x255_Grey93            ctermfg=255 guifg=#eeeeee
" }}}

" vim: sw=2 ts=2 foldmethod=marker

