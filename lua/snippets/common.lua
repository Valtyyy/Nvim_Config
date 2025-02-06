local ls = require'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local hep_c =
        s("hep", {
        t({"/*", ""}),
        t({"** EPITECH PROJECT, 2025", ""}),
        t("** "), i(1, "title"),
        t({"", "** File description:", ""}),
        t("** "), i(2, "description"),
        t({"", "*/", ""})
    })

return {
    hep_c = hep_c
}
