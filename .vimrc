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

" I like my C, CPP code to be like this
autocmd FileType c,cpp call SetExpandTab() | call SetShiftWidth(2) | call SetTabStop(2)

" And python likes tabs
autocmd FileType python call SetTabStop(4) | call SetShiftWidth(2)

" Make also tabs
autocmd FileType make call SetTabStop(4)

