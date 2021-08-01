scriptencoding utf-8

if !(has('termguicolors') && &termguicolors)
      \ && !has('gui_running') && &t_Co != 256
  finish
endif

if v:version > 580
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name='neucs'
let s:plt = neucs#GetPalette()
"}}}

"********************************************************** Highlight Groups{{{
call neucs#Highlight('NeuBgH', 'NONE', s:plt.bgh)
call neucs#Highlight('NeuBgM', 'NONE', s:plt.bgm)
call neucs#Highlight('NeuBgS', 'NONE', s:plt.bgs)

call neucs#Highlight('NeuFgH', s:plt.fgh)
call neucs#Highlight('NeuFgM', s:plt.fgm)
call neucs#Highlight('NeuFgS', s:plt.fgs)

call neucs#Highlight('NeuGrayH', s:plt.grayh)
call neucs#Highlight('NeuGrayM', s:plt.graym)
call neucs#Highlight('NeuGrayS', s:plt.grays)

call neucs#Highlight('NeuRed', s:plt.red)
call neucs#Highlight('NeuOrange', s:plt.orange)
call neucs#Highlight('NeuYellow', s:plt.yellow)
call neucs#Highlight('NeuGreen', s:plt.green)
call neucs#Highlight('NeuCyan', s:plt.cyan)
call neucs#Highlight('NeuBlue', s:plt.blue)
call neucs#Highlight('NeuPurple', s:plt.purple)

call neucs#Highlight('NeuGrayHBold', s:plt.grayh, 'NONE', 'bold')
call neucs#Highlight('NeuGrayMBold', s:plt.graym, 'NONE', 'bold')
call neucs#Highlight('NeuGraySBold', s:plt.grays, 'NONE', 'bold')

call neucs#Highlight('NeuRedBold', s:plt.red, 'NONE', 'bold')
call neucs#Highlight('NeuOrangeBold', s:plt.orange, 'NONE', 'bold')
call neucs#Highlight('NeuYellowBold', s:plt.yellow, 'NONE', 'bold')
call neucs#Highlight('NeuGreenBold', s:plt.green, 'NONE', 'bold')
call neucs#Highlight('NeuCyanBold', s:plt.cyan, 'NONE', 'bold')
call neucs#Highlight('NeuBlueBold', s:plt.blue, 'NONE', 'bold')
call neucs#Highlight('NeuPurpleBold', s:plt.purple, 'NONE', 'bold')
"}}}

"******************************************************************* General{{{
call neucs#Highlight('Normal', s:plt.fgm, s:plt.bgm)

call neucs#Highlight('ColorColumn', 'NONE', s:plt.bgs)
call neucs#Highlight('Comment', s:plt.graym, 'NONE', 'italic')
call neucs#Highlight('Cursor', 'NONE', 'NONE', 'inverse')
call neucs#Highlight('Error', s:plt.red, 'bg', 'bold,inverse')
call neucs#Highlight('ErrorMsg', 'bg', s:plt.red, 'bold')
call neucs#Highlight('IncSearch', s:plt.orange, 'bg', 'inverse')
call neucs#Highlight('MatchParen', 'NONE', s:plt.grays, 'bold')
call neucs#Highlight('Search', s:plt.yellow, 'bg', 'inverse')
call neucs#Highlight('SignColumn', 'NONE', 'bg')
call neucs#Highlight('StatusLine', s:plt.fgm, s:plt.bgh)
call neucs#Highlight('StatusLineNC', s:plt.bgh, s:plt.fgm, 'inverse')
call neucs#Highlight('TabLineFill', 'fg', s:plt.bgh)
call neucs#Highlight('Todo', 'fg', 'bg', 'bold,italic')
call neucs#Highlight('Underlined', s:plt.blue, 'NONE', 'underline')
call neucs#Highlight('Visual', 'NONE', s:plt.grays)
call neucs#Highlight('WildMenu', s:plt.blue, s:plt.bgs, 'bold')

highlight! link Conceal NeuBlue
highlight! link CursorLineNr NeuYellow
highlight! link Directory NeuGreenBold
highlight! link LineNr NeuGrayM
highlight! link ModeMsg NeuYellowBold
highlight! link MoreMsg NeuYellowBold
highlight! link NonText NeuGrayM
highlight! link Question NeuOrangeBold
highlight! link Special NeuOrange
highlight! link SpecialKey NeuGrayM
highlight! link TabLineSel NeuGreen
highlight! link Title NeuGreenBold
highlight! link WarningMsg NeuRedBold

highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link vCursor Cursor
highlight! link CursorLine ColorColumn
highlight! link CursorColumn ColorColumn
highlight! link Folded Comment
highlight! link FoldColumn Comment
highlight! link TabLine TabLineFill
highlight! link VertSplit Normal
highlight! link VisualNOS Visual
"}}}

"**************************************************************** Popup Menu{{{
call neucs#Highlight('Pmenu', s:plt.fgm, s:plt.bgs)
call neucs#Highlight('PmenuSbar', 'NONE', s:plt.bgs)
call neucs#Highlight('PmenuSel', s:plt.bgs, s:plt.blue, 'bold')
call neucs#Highlight('PmenuThumb', 'NONE', s:plt.bgs)
"}}}

"************************************************************ Generic Syntax{{{
highlight! link Boolean NeuPurple
highlight! link Character NeuPurple
highlight! link Conditional NeuRed
highlight! link Constant NeuPurple
highlight! link Define NeuCyan
highlight! link Exception NeuRed
highlight! link Float NeuPurple
highlight! link Function NeuGreenBold
highlight! link Include NeuCyan
highlight! link Identifier NeuBlue
highlight! link Keyword NeuRed
highlight! link Label NeuRed
highlight! link Macro NeuCyan
highlight! link Number NeuPurple
highlight! link PreCondit NeuCyan
highlight! link PreProc NeuCyan
highlight! link Repeat NeuRed
highlight! link Statement NeuRed
highlight! link StorageClass NeuOrange
highlight! link String NeuGreen
highlight! link Structure NeuCyan
highlight! link Type NeuYellow
highlight! link Typedef NeuYellow

highlight! link Operator Normal
"}}}


"********************************************************************* Diffs{{{
call neucs#Highlight('DiffAdd', s:plt.green, 'bg', 'inverse')
call neucs#Highlight('DiffChange', s:plt.cyan, 'bg', 'inverse')
call neucs#Highlight('DiffDelete', s:plt.red, 'bg', 'inverse')
call neucs#Highlight('DiffText', s:plt.yellow, 'bg', 'inverse')
"}}}

"****************************************************************** Spelling{{{
call neucs#Highlight('SpellBad', 'NONE', 'NONE', 'undercurl', s:plt.blue)
call neucs#Highlight('SpellCap', 'NONE', 'NONE', 'undercurl', s:plt.red)
call neucs#Highlight('SpellLocal', 'NONE', 'NONE', 'undercurl', s:plt.cyan)
call neucs#Highlight('SpellRare', 'NONE', 'NONE', 'undercurl', s:plt.purple)
"}}}

"****************************************************************** Terminal{{{
if has('nvim')
  let g:terminal_color_0 = s:plt.bgm.g
  let g:terminal_color_8 = s:plt.graym.g

  let g:terminal_color_1 = s:plt.red.g
  let g:terminal_color_9 = s:plt.red.g

  let g:terminal_color_2 = s:plt.green.g
  let g:terminal_color_10 = s:plt.green.g

  let g:terminal_color_3 = s:plt.yellow.g
  let g:terminal_color_11 = s:plt.yellow.g

  let g:terminal_color_4 = s:plt.blue.g
  let g:terminal_color_12 = s:plt.blue.g

  let g:terminal_color_5 = s:plt.purple.g
  let g:terminal_color_13 = s:plt.purple.g

  let g:terminal_color_6 = s:plt.cyan.g
  let g:terminal_color_14 = s:plt.cyan.g

  let g:terminal_color_7 = s:plt.fgs.g
  let g:terminal_color_15 = s:plt.fgm.g
endif
"}}}

set background=dark
