-- For C++
vim.cmd([[autocmd FileType cpp hi cFunction guifg=#463DFF ctermfg=red]])

-- For JavaScript
vim.cmd([[autocmd FileType javascript hi jsFunction guifg=#00ff00 ctermfg=green]])

-- For Kotlin
vim.cmd([[autocmd FileType kotlin hi kotlinFunction guifg=#0000ff ctermfg=blue]])

-- For Go
vim.cmd([[autocmd FileType go hi goFunction guifg=#ff00ff ctermfg=magenta]])

-- For Python
vim.cmd([[autocmd FileType python hi pythonFunction guifg=#ffff00 ctermfg=yellow]])

-- For Java
vim.cmd([[autocmd FileType java hi javaFunction guifg=#ff9900 ctermfg=orange]])

-- For Rust
vim.cmd([[autocmd FileType rust hi rustFunction guifg=#9900ff ctermfg=darkmagenta]])

-- Set the color for matching parentheses
vim.cmd([[highlight MatchParen guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline]])

-- Define a syntax highlight group for function calls
vim.cmd([[ hi def link FunctionCall Special ]])

-- Define a syntax highlight group for the light blue color
vim.cmd([[ hi def link FunctionCallLightBlue Special ]])

-- Define a syntax region to match function calls and highlight them with the light blue color
vim.cmd([[
  augroup FunctionCallHighlightLightBlue
    autocmd!
    autocmd Syntax * call matchadd('FunctionCallLightBlue', '\<\h\+\ze\s*(')
  augroup END
]])

-- Define a syntax highlight group for function calls
vim.cmd([[ hi def link FunctionCall Cyan ]])

-- Define a syntax highlight group for function parameters
vim.cmd([[ hi def link FunctionParam Cyan ]])

-- Define a syntax region to match function calls and highlight them
vim.cmd([[
  augroup FunctionCallHighlight
    autocmd!
    autocmd Syntax * call matchadd('FunctionCall', '\<\h\+\ze\s*(')
    autocmd Syntax * call matchadd('FunctionParam', '\v\w+\ze\s*,', '', -1)
  augroup END
]])
