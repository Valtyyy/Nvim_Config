local ls = require'luasnip'
local common = require'snippets.common'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local f = ls.function_node

local guard =
    s("hg", {
    t({"#ifndef "}),
    i(1, "HEADER"), t({"_H_"}),
    t({"", "\t#define "}),
    f(function (args)
        return args[1][1] or ""
    end, {1}),
    t("_H_"),
    t{"", "", ""},
    i(0),
    t({"", "", "#endif"})
    })

local snips = {
    common.hep_c,
    guard
}

return {
    snips = snips
}
