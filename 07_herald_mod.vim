" Vim color file - herald_mod
" Generated by http://bytefluent.com/vivify 2017-06-28
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "herald_mod"

"hi WildMenu -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Float -- no settings --
"hi Union -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
"hi default -- no settings --
hi IncSearch guifg=NONE guibg=#FF9E16 guisp=#FF9E16 gui=NONE ctermfg=NONE ctermbg=208 cterm=NONE
hi SignColumn guifg=#c484ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi SpecialComment guifg=#ffb639 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi Typedef guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Title guifg=#71ff89 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=84 ctermbg=234 cterm=bold
hi Folded guifg=#0046c7 guibg=#001336 guisp=#001336 gui=NONE ctermfg=4 ctermbg=17 cterm=NONE
hi PreCondit guifg=#c484ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Include guifg=#c484ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi TabLineSel guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=255 ctermbg=234 cterm=bold
hi StatusLineNC guifg=#837e80 guibg=#25365a guisp=#25365a gui=NONE ctermfg=8 ctermbg=17 cterm=NONE
hi NonText guifg=#ff6a85 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=204 ctermbg=234 cterm=NONE
hi DiffText guifg=#ff9900 guibg=#12457D guisp=#12457D gui=underline ctermfg=208 ctermbg=6 cterm=underline
hi ErrorMsg guifg=#eaeaea guibg=#A32024 guisp=#A32024 gui=NONE ctermfg=255 ctermbg=124 cterm=NONE
hi Ignore guifg=#393939 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=237 ctermbg=234 cterm=NONE
hi Debug guifg=#ffb639 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#430300 guisp=#430300 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Identifier guifg=#77c9ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=117 ctermbg=234 cterm=NONE
hi SpecialChar guifg=#ffb639 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi Conditional guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi StorageClass guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Todo guifg=#ff4235 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=13 ctermbg=234 cterm=bold
hi Special guifg=#ffb639 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi LineNr guifg=#837e80 guibg=#000000 guisp=#000000 gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#837e80 guibg=#000000 guisp=#000000 gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Label guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi PMenuSel guifg=#660300 guibg=#F17A00 guisp=#F17A00 gui=NONE ctermfg=52 ctermbg=208 cterm=NONE
hi Search guifg=NONE guibg=#FF9E16 guisp=#FF9E16 gui=NONE ctermfg=NONE ctermbg=208 cterm=NONE
hi Delimiter guifg=#ffed48 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Statement guifg=#fd8fff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=213 ctermbg=234 cterm=NONE
hi Comment guifg=#837e80 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=8 ctermbg=234 cterm=NONE
hi Character guifg=#71ff89 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=84 ctermbg=234 cterm=NONE
hi Number guifg=#71ff89 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=84 ctermbg=234 cterm=NONE
hi Boolean guifg=#fd8fff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=213 ctermbg=234 cterm=NONE
hi Operator guifg=#ff6a85 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=204 ctermbg=234 cterm=NONE
hi CursorLine guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question guifg=#ffa600 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=214 ctermbg=234 cterm=NONE
hi WarningMsg guifg=#1a1a1a guibg=#FFA500 guisp=#FFA500 gui=NONE ctermfg=234 ctermbg=214 cterm=NONE
hi VisualNOS guifg=#837e80 guibg=#000000 guisp=#000000 gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#ff9900 guibg=#081F38 guisp=#081F38 gui=NONE ctermfg=208 ctermbg=17 cterm=NONE
hi ModeMsg guifg=#ffa600 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=214 ctermbg=234 cterm=NONE
hi CursorColumn guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Define guifg=#c484ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Function guifg=#98d6ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=117 ctermbg=234 cterm=NONE
hi FoldColumn guifg=#0046c7 guibg=#001336 guisp=#001336 gui=NONE ctermfg=4 ctermbg=17 cterm=NONE
hi PreProc guifg=#c484ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Visual guifg=#ffb639 guibg=#000000 guisp=#000000 gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#ffa600 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=214 ctermbg=234 cterm=NONE
hi VertSplit guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Exception guifg=#ff4235 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=13 ctermbg=234 cterm=NONE
hi Keyword guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Type guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi DiffChange guifg=#bd6e00 guibg=#0B294A guisp=#0B294A gui=NONE ctermfg=1 ctermbg=17 cterm=NONE
hi Cursor guifg=#393939 guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=237 ctermbg=227 cterm=NONE
hi Error guifg=#ff4235 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=13 ctermbg=234 cterm=NONE
hi PMenu guifg=#800400 guibg=#140100 guisp=#140100 gui=NONE ctermfg=3 ctermbg=52 cterm=NONE
hi SpecialKey guifg=#fd8fff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=213 ctermbg=234 cterm=NONE
hi Constant guifg=#71ff89 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=84 ctermbg=234 cterm=NONE
hi Tag guifg=#ffb639 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi String guifg=#ffb639 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=221 ctermbg=234 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#720300 guisp=#720300 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi MatchParen guifg=#393939 guibg=#FFA500 guisp=#FFA500 gui=NONE ctermfg=237 ctermbg=214 cterm=NONE
hi Repeat guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Directory guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Structure guifg=#ffed68 guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=227 ctermbg=234 cterm=NONE
hi Macro guifg=#c484ff guibg=#1F1F1F guisp=#1F1F1F gui=NONE ctermfg=177 ctermbg=234 cterm=NONE
hi Underlined guifg=#ff4235 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=13 ctermbg=234 cterm=underline
hi DiffAdd guifg=#ff9900 guibg=#006124 guisp=#006124 gui=NONE ctermfg=208 ctermbg=22 cterm=NONE
hi TabLine guifg=#393939 guibg=#141414 guisp=#141414 gui=NONE ctermfg=237 ctermbg=233 cterm=NONE
hi cursorim guifg=#393939 guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=237 ctermbg=227 cterm=NONE
hi underline guifg=#ed95ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi pythonimport guifg=#00aa00 guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#00aa00 guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#92a0bc guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#00aa00 guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi mbenormal guifg=#e9d7c3 guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#d890ea guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#ffd191 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#ffffff guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=15 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#ffffff guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#ffd191 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#ffd191 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#ffd191 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#d890ea guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#d890ea guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#595959 guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=240 ctermbg=120 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#c76d0c guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#8a96ff guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#ffad61 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#e9e9e7 guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi user2 guifg=#8282ba guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8c guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#c76d0c guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#c78e25 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#d890ea guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi gutter guifg=#1a1a1a guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=234 ctermbg=7 cterm=NONE
hi pythonbuiltin guifg=#99adaf guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=#fcfeff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#fcfeff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=#fcfeff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#fcfeff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=#fcfeff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi stringdelimiter guifg=#6b8040 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#f700a5 guibg=NONE guisp=NONE gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi string guifg=#b0c77a guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi constant guifg=#e97856 guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi normal guifg=#ffffe8 guibg=#151515 guisp=#151515 gui=NONE ctermfg=230 ctermbg=233 cterm=NONE
hi rubyinstancevariable guifg=#c7b7ff guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#4f8bb3 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi identifier guifg=#d4c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi comment guifg=#a2a2a2 guibg=NONE guisp=NONE gui=italic ctermfg=247 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#6a007d guibg=NONE guisp=NONE gui=NONE ctermfg=54 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#be0085 guibg=NONE guisp=NONE gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#f85f85 guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi function guifg=#ffd37c guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi directory guifg=#f4e995 guibg=NONE guisp=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#85aaf0 guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#85abe0 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#c7b7ff guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi condtional guifg=#8fffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=255 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=255 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=255 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=255 ctermbg=234 cterm=underline
hi htmlbold guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=255 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=255 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#eaeaea guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=255 ctermbg=234 cterm=underline
