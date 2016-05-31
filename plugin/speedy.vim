" File:			speedy.vim
" Description:	Fast characterwise, linewise, and blockwise mouse selections
" Author:		Brian Dellatera <github.com/bdellaterra>
" Version:		0.1.1
" License:      Copyright 2016 Brian Dellaterra. This file is part of Speedy.
" 				Distributed under the terms of the GNU Lesser General Public License.
"				See the file LICENSE or <http://www.gnu.org/licenses/>.
" Attribution:  Inspired by Vim Tip #743 (Author: hari_vim)
"               http://vim.wikia.com/wiki/Use_Alt-Mouse_to_select_blockwise


" Guard against repeat sourcing of this script
if exists('g:loaded_speedyPlugin')
	finish
end
let g:loaded_speedyPlugin = 1

" Keymap for switching through characterwise, linewise, and blockwise
" visual seletion modes
if !exists('g:speedy#visualModeSwitch')
    let g:speedy#visualModeSwitch = '<Tab>'
endif

" Helper function to cycle through visual modes
" visualMode - passed directly from mapping via the visualmode() function
" selectMode - set to 1 if calling from a select mode mapping
function! <SID>CycleVisualMode( visualMode, ... )
	let selectMode = get( a:000, 0, 0 )
	let modeSwitch = selectMode ? "\<C-g>" : ''    " to restore select mode
    " NOTE: ==# is like == but case-sensitive
    if a:visualMode ==# 'v'
		exe "normal gvV" . modeSwitch
    elseif a:visualMode ==# 'V'
		exe "normal gv\<C-v>" . modeSwitch
    else " <CTRL-V>
		exe "normal gvv" . modeSwitch
    endif
endfunction

" Map the switch to cycle through visual modes
exe 'vnoremap  <silent> ' . g:speedy#visualModeSwitch
		\ . ' <C-\><C-n>:call <SID>CycleVisualMode(visualmode())<CR>'
exe 'snoremap  <silent> ' . g:speedy#visualModeSwitch
		\ . ' <C-\><C-n>:call <SID>CycleVisualMode(visualmode(), 1)<CR>'


" Flag indicating whether Ctrl+LeftMouse should be the same as just LeftMouse
" This is easy to hit accidentally when making blockwise character selections,
" and can result in annoying error messages regarding tags.
" NOTE: g<LeftMouse> is an alternative for the default Ctrl+Leftmouse behavior
if !exists('g:speedy#DisableCtrlLeftMouse')
	let g:speedy#DisableCtrlLeftMouse = 1
endif
if exists('g:speedy#DisableCtrlLeftMouse') && g:speedy#DisableCtrlLeftMouse
	nmap <C-LeftMouse> <LeftMouse>
	map  <C-LeftMouse> <LeftMouse>
	imap <C-LeftMouse> <LeftMouse>
	nmap <C-2-LeftMouse> <2-LeftMouse>
	map  <C-2-LeftMouse> <2-LeftMouse>
	imap <C-2-LeftMouse> <2-LeftMouse>
	nmap <C-3-LeftMouse> <3-LeftMouse>
	map  <C-3-LeftMouse> <3-LeftMouse>
	imap <C-3-LeftMouse> <3-LeftMouse>
	nmap <C-4-LeftMouse> <4-LeftMouse>
	map  <C-4-LeftMouse> <4-LeftMouse>
	imap <C-4-LeftMouse> <4-LeftMouse>
endif

" If shift is pressed, mouse selections are linewise
snoremap <S-LeftMouse> <LeftMouse><Esc><S-v>
snoremap <S-LeftDrag> <LeftDrag>
snoremap <LeftMouse> <LeftMouse><Esc>
inoremap <S-LeftMouse> <LeftMouse><Esc><S-v>
inoremap <S-LeftDrag> <LeftDrag> 
noremap <S-LeftMouse> <LeftMouse><S-v>
noremap <S-LeftDrag> <LeftDrag> 

" If control is pressed, mouse selections are blockwise
snoremap <C-LeftMouse> <LeftMouse><Esc><C-v>
snoremap <C-LeftDrag> <LeftDrag>
snoremap <LeftMouse> <LeftMouse><Esc>
inoremap <C-LeftMouse> <LeftMouse><Esc><C-v>
inoremap <C-LeftDrag> <LeftDrag> 
noremap <C-LeftMouse> <LeftMouse><C-v>
noremap <C-LeftDrag> <LeftDrag> 

" Alternative leader mapping to do the same thing as shift
" (Some terminals have problems with the Shift modifier)
smap <Leader><LeftMouse> <S-LeftMouse>
imap <Leader><LeftMouse> <S-LeftMouse>
map <Leader><LeftMouse> <S-LeftMouse>

