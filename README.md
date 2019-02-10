# vim-speedy
Fast characterwise, linewise, and blockwise mouse selections


***The Fastest Mouse***
-----------------------
- Shift-Click or Right-Click to select line
- Shift-Click-Drag or Right-Click-Drag to make linewise selections
- Ctrl-Click-Drag to make blockwise selections
- With text selected, use Tab key to cycle between modes
- Left-click or Esc cancels selection

The Shift modifier may not work in some terminals.

Vim's default mapping for Ctrl+LeftClick is to "Jump to the definition of the
keyword under the cursor." It's easy to accidentally trigger that mapping while
making blockwise selections with this plugin, resulting in "tag not found"
errors that can be annoying. By default this plugin disables the Ctrl-LeftClick
mapping, leaving Vim's alternative mapping - 'g' followed by LeftClick -
in place. (see :help g\<LeftMouse\>)

To prevent this plugin from disabling the Ctrl+LeftClick tag-behavior
set the following:
```
let g:speedy#DisableCtrlLeftMouse = 0
```

