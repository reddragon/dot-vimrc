function SetCommonDefaults()
  " Set auto indentation
  set autoindent
  " Set line numbers
  set nu
endfunction

" Expand Tabs
function SetExpandTab()
  set expandtab
endfunction

" Set columns between indentation levels
function SetShiftWidth(w)
  exe "set shiftwidth=".a:w
endfunction

" Set column width for tabs
function SetTabStop(t)
  exe "set tabstop=".a:t
  exe "set softtabstop=".a:t
endfunction

" Do the basic stuff for all
autocmd FileType c,cpp,java,python,javascript,make,tex call SetCommonDefaults()

" Tabs = 4 Spaces, Shift Width = 4
autocmd FileType javascript call SetExpandTab() | call SetShiftWidth(4) | call SetTabStop(4)

" Tabs = 2 Spaces, Shift Width = 2
autocmd FileType c,cpp call SetExpandTab() | call SetShiftWidth(2) | call SetTabStop(2)

" And python likes tabs
autocmd FileType python call SetTabStop(4) | call SetShiftWidth(2)

" Make also tabs
autocmd FileType make call SetTabStop(4)

