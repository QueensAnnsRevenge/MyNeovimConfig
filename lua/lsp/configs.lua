local status_ok = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end


local lspconfig = require("lspconfig")

local servers = {  "jedi-language-server" ,"sumneko_lua", "clangd", "gopls", "jdtls" }

require("mason").setup({
	ensure_installed = servers,
})

for _, server in servers do
	local opts = {
		on_attach = require("lsp.handlers").on_attach,
		capabilities = require("lsp.handlers").capabilities,
	}
	lspconfig[server].setup(opts)
end
