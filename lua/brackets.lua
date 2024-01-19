function highlight_brackets()
    local colors = {'blue', 'blue', '', '', 'blue', 'blue'}

    -- Iterate over each color and set highlight for brackets
    for i, color in ipairs(colors) do
        vim.cmd('hi Rainbow' .. i .. ' guifg=' .. color .. ' ctermfg=' .. color)
    end
    -- Enable syntax highlighting for brackets
    vim.cmd [[
        syn match Rainbow1 "(" contained containedin=ALL
        syn match Rainbow2 ")" contained containedin=ALL
        syn match Rainbow3 "\[" contained containedin=ALL
        syn match Rainbow4 "]" contained containedin=ALL
        syn match Rainbow5 "{" contained containedin=ALL
        syn match Rainbow6 "}" contained containedin=ALL
        syn match Rainbow7 "<" contained containedin=ALL
        syn match Rainbow8 ">" contained containedin=ALL
    ]]

    -- Link the syntax groups to the corresponding highlights
    vim.cmd [[
        hi link Rainbow1 Rainbow1
        hi link Rainbow2 Rainbow2
        hi link Rainbow3 Rainbow3
        hi link Rainbow4 Rainbow4
        hi link Rainbow5 Rainbow5
        hi link Rainbow6 Rainbow6
        hi link Rainbow7 Rainbow7
        hi link Rainbow8 Rainbow8
    ]]
end

-- Enable bracket highlighting on BufEnter
vim.api.nvim_exec([[
    autocmd BufEnter * lua highlight_brackets()
]], false)

