" Description {{{
"   Keyboard Layout by Nikolay Nemshilov, 2016-12-29.  http://nikolay.rocks/categories/optimal+keyboard
"   Vim Template by Esko, 2016-03-08. https://github.com/jooize/vim-colemak
"   Modified by Nathan "Ursa" Christensen, 2020-11-01.
"
"   Load halmak.vim after all other Vim scripts.
"
" }}}
" Require Vim >=7.0 {{{
    if v:version < 700 | echohl WarningMsg | echo "colemak.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }}}
" Up/down/left/right {{{
    nnoremap a h|xnoremap a h|onoremap a h|
    nnoremap e j|xnoremap e j|onoremap e j|
    nnoremap o k|xnoremap o k|onoremap o k|
    nnoremap i l|xnoremap i l|onoremap i l|
" }}}
" Words forward/backward {{{
    " p/P = back word/WORD
    " x/X = end of word/WORD
    " k/K = forward word/WORD
    nnoremap p b|xnoremap p b|onoremap p b|
    nnoremap P B|xnoremap P B|onoremap P B|
    nnoremap x e|xnoremap x e|onoremap x e|
    nnoremap X E|xnoremap X E|onoremap X E|
    nnoremap k w|xnoremap k w|onoremap k w|
    nnoremap K W|xnoremap K W|onoremap K W|
    cnoremap <C-P> <C-Left>
    cnoremap <C-X> <C-Right>
" }}}
" inSert/Replace/append (T) {{{
    nnoremap s i|
    nnoremap S I|
    nnoremap t a|
    nnoremap T A|
" }}}
" Change {{{
    nnoremap h c|xnoremap h c|
    nnoremap H C|xnoremap H C|
    nnoremap hh cc|
" }}}
" Cut/copy/paste {{{
    nnoremap c x|xnoremap c d|
    nnoremap y y|xnoremap y y|
    nnoremap g p|xnoremap g p|
    nnoremap C dd|xnoremap C d|
    nnoremap Y yy|xnoremap Y y|
    nnoremap G P|xnoremap G P|
    nnoremap gg gp|xnoremap gg gp|
    nnoremap gG gP|xnoremap gG gP|
" }}}
" Undo/redo {{{
    nnoremap z u|xnoremap z :<C-U>undo<CR>|
    nnoremap gz U|xnoremap gz :<C-U>undo<CR>|
    nnoremap Z <C-R>|xnoremap Z :<C-U>redo<CR>|
" }}}
" Visual mode {{{
    nnoremap v v|xnoremap v v|
    nnoremap V V|xnoremap V V|
    nnoremap gv gv
    " Make insert/add work also in visual line mode like in visual block mode
    xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-V>0o$I" : "I")
    xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
    xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-V>0o$A" : "A")
" }}}
" Search {{{
    " f/F are unchanged
    nnoremap m t|xnoremap m t|onoremap m t|
    nnoremap M T|xnoremap M T|onoremap M T|
    nnoremap b ;|xnoremap b ;|onoremap b ;|
    nnoremap B ,|xnoremap B ,|onoremap B ,|
    nnoremap n n|xnoremap n n|onoremap n n|
    nnoremap N N|xnoremap N N|onoremap N N|
" }}}
" inneR text objects {{{
    " E.g. dip (delete inner paragraph) is now drp
    onoremap r i
" }}}
" Folds, etc. {{{
    nnoremap j z|xnoremap j z|
    nnoremap jn zj|xnoremap jn zj|
    nnoremap je zk|xnoremap je zk|
" }}}
" Overridden keys must be prefixed with g {{{
    nnoremap gX X|xnoremap gX X|
    nnoremap gK K|xnoremap gK K|
    nnoremap gL L|xnoremap gL L|
" }}}
" Window handling {{{
    nnoremap <C-W>a <C-W>h|xnoremap <C-W>a <C-W>h|
    nnoremap <C-W>e <C-W>j|xnoremap <C-W>e <C-W>j|
    nnoremap <C-W>o <C-W>k|xnoremap <C-W>o <C-W>k|
    nnoremap <C-W>i <C-W>l|xnoremap <C-W>i <C-W>l|
" }}}
