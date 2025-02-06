local ls = require'luasnip'
local common = require'snippets.common'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snips = {
    common.hep_c
}

return {
    snips = snips
}
