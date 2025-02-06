require'nvim-tree'.setup {
    view = {
        width = {
            padding = 8,
            min = 44
        },
        adaptive_size = true,
    },
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "➜",
                    arrow_open = "⤵"
                }
            }
        }
    }
}
