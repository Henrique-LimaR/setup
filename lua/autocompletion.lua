require('nvim-autopairs').setup{}
require('nvim-autopairs.completion.compe').setup({
    map_cr = true, -- map <CR> to insert pair
    map_complete = true, -- auto insert `(` after selecting function or method item
})

local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

npairs.setup({
    check_ts = true,
})