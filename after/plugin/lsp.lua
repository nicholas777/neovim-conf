local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.confirm({select = true}),
    }
})

