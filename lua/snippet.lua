local ls = require'luasnip'
local c_snips = require'snippets.snip_c'
local cpp_snips = require'snippets.snip_cpp'

ls.setup()

-- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
ls.add_snippets("c", c_snips.snips)
ls.add_snippets("cpp", cpp_snips.snips)
