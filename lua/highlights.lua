vim.cmd([[ highlight Visual term=bold guibg=#869092]])
vim.cmd([[ highlight Function term=bold ctermfg=Yellow guifg=#80a0ff gui=bold ]])
vim.cmd([[ highlight Comment ctermfg=Blue guifg=#80a0ff gui=bold ]])
vim.cmd([[ highlight Number guifg=#ff0000 ctermfg=red ]])
vim.cmd([[ highlight LineNr guifg=#ff0000 ctermfg=red ]])
vim.cmd('highlight ColorColumn ctermbg=red guibg=Yellow')
vim.cmd('highlight Variable guifg=#ff0000 ctermfg=red')

vim.cmd([[highlight VertSplit guifg=lightgray ctermfg=lightgray]])

local highlight_group = "FunctionName"
local string = "String"

vim.cmd(string.format('highlight %s guifg=#003DD5 ctermfg=Cyan', highlight_group))
vim.cmd(string.format('highlight %s guifg=#75E809 ctermfg=Yellow', string))

vim.api.nvim_exec("hi PopupBorder guibg=NONE guifg=#4d4d4d", false)
