local cmp = require'cmp'
local ls = require'luasnip'

cmp.setup({
    snippet = {
        expand = function(args)
            ls.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        --['<C-a>'] = cmp.mapping.select_next_item(),
        --['<C-e>'] = cmp.mapping.select_prev_item(),
        --['<C-f>'] = cmp.mapping.scroll_docs(4),
        --['<C-b>'] = cmp.mapping.scroll_docs(-4),
        --['<C-a>'] = cmp.mapping.confirm({ selected = true }),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ selected = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            elseif cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        --{ name = 'buffer' },
        { name = 'path' },
    }),
    window = {
        completion = {
            border = 'rounded',
            winhighlight = 'Normal:CmpNormal,FloatBorder:CmpBorder'
        },
        documentation = {
            border = 'rounded'
        }
    }
})
