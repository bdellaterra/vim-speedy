" File:			speedy.vim
" Description:	Fast characterwise, linewise, and blockwise mouse selections
" Author:		Brian Dellatera <github.com/bdellaterra>
" Version:		0.1.1
" License:      Copyright 2016 Brian Dellaterra. This file is part of Speedy.
" 				Distributed under the terms of the GNU Lesser General Public License.
"				See the file LICENSE or <http://www.gnu.org/licenses/>.


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

