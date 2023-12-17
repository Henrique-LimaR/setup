-- lua/compe_config.lua

local compe = require('compe')

vim.o.completeopt = 'menu,menuone,noselect'

local border_chars = {
    {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}
}

compe.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true, 
    border = border_chars[0],

    source = {
        path = true,
        buffer = true,
        nvim_lsp = true,
        nvim_lua = true,
    },
    documentation = {
        border = border_chars[0],
        winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
        max_width = 120,
        min_width = 60,
        max_height = math.floor(vim.o.lines * 0.3),
        min_height = 1,
    }
}

