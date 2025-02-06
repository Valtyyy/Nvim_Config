require('search').open()
--[[
local builtin = require'telescope.builtin'
local search = require'search'

search.setup({
    mappings = {
        next = "<Right>",
        prev = "<Left>"
    }
})

vim.keymap.set('n', '<C-S-f>', search.open())
--]]
