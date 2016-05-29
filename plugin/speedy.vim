" File:			speedy.vim
" Description:	Fast characterwise, linewise, and blockwise mouse selections
" Author:		Brian Dellatera <github.com/bdellaterra>
" Version:		0.1.1
" License:      Copyright 2016 Brian Dellaterra. This file is part of Speedy.
" 				Distributed under the terms of the GNU Lesser General Public License.
"				See the file LICENSE or <http://www.gnu.org/licenses/>.


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
snoremap <S-LeftMouse> <LeftMouse><Esc><S-V>
snoremap <S-LeftDrag> <LeftDrag>
snoremap <LeftMouse> <LeftMouse><Esc>
inoremap <S-LeftMouse> <LeftMouse><Esc><S-V>
inoremap <S-LeftDrag> <LeftDrag> 
noremap <S-LeftMouse> <LeftMouse><S-V>
noremap <S-LeftDrag> <LeftDrag> 

" If control is pressed, mouse selections are blockwise
snoremap <C-LeftMouse> <LeftMouse><Esc><C-V>
snoremap <C-LeftDrag> <LeftDrag>
snoremap <LeftMouse> <LeftMouse><Esc>
inoremap <C-LeftMouse> <LeftMouse><Esc><C-V>
inoremap <C-LeftDrag> <LeftDrag> 
noremap <C-LeftMouse> <LeftMouse><C-V>
noremap <C-LeftDrag> <LeftDrag> 

