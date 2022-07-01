require("nvim-lsp-installer").setup()

local lspconfig = require("lspconfig")

lspconfig.vimls.setup {}
lspconfig.sumneko_lua.setup {}
lspconfig.tsserver.setup {}

