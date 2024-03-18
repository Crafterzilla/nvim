-- Use ":help lsp-zero-keybindings" to see default bindings

-- Servers to use and setup for Neovim
local servers = {
    "bashls",
    "clangd",
    "jdtls",
    "cssls",
    "dockerls",
    "tsserver",
    "svelte",
    "eslint",
    "html",
    "pyright",
    "lua_ls",
    "yamlls",
    "tailwindcss",
    "arduino_language_server",
    "rust_analyzer",
}

local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function (client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)


-- Mason to Install LSPs
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = servers,
    handlers = {
        lsp_zero.default_setup,
    },
    automatic_installation = true,
})


-- Auto Complete
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
        { name = "nvim_lua" },
  },

  mapping = cmp.mapping.preset.insert({
    -- Enter key confirms completion item
    ['<tab>'] = cmp.mapping.confirm({select = true}),

    -- Ctrl + space triggers completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
