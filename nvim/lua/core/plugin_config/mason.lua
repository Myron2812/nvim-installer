require("mason").setup()
require("mason-lspconfig").setup()
local lspconfig = require("lspconfig")

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.formatting, {})
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.svls.setup({
  --root_dir = lspconfig.util.root_pattern('hwetools'),
  root_dir = lspconfig.util.git_ancestor,
  --capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

--[[lspconfig.svlangserver.setup{
  --root_dir = lspconfig.util.root_pattern('hwetools'),
  root_dir = lspconfig.util.git_ancestor;
  capabilities = capabilities,
  on_attach = on_attach,
}]]

lspconfig.verible.setup{
  --root_dir = lspconfig.util.root_pattern('hwetools'),
  --root_dir = lspconfig.util.git_ancestor;
  cmd = {
    "verible-verilog-ls",
    "--rules_config_search"
  },
  capabilities = capabilities,
  on_attach = on_attach,
}

--[[lspconfig.veridian.setup {
  --root_dir = lspconfig.util.root_pattern('hwetools'),
  root_dir = lspconfig.util.git_ancestor,
  capabilities = capabilities,
  on_attach = on_attach,
}]]
