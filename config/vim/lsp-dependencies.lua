require'lspconfig'.tsserver.setup{
  root_dir = require('lspconfig.util').root_pattern(
  "package.json",
  "tsconfig.base.json",
  "tsconfig.json",
  "jsconfig.json",
  ".git"
  )
}
-- require'lspconfig'.denols.setup{
--   root_dir = require('lspconfig.util').root_pattern(
--     "tsconfig.base.json",
--     "tsconfig.json",
--     "deno.json",
--     "deno.jsonc",
--     ".git"
--   )
-- }
vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

require'lspconfig'.angularls.setup{
  root_dir = require('lspconfig.util').root_pattern(
    -- `project.json` is used instead of `angular.json` in NX workspaces, so we
    -- support both:
    'angular.json',
    'project.json'
  )
}
-- Commented out as this doesn't seem necessary at the moment:
-- require'lspconfig'.nxls.setup{}

-- Add this kind of thing within Setup for settings:
-- settings = {
--   ['rust-analyzer'] = {
--     diagnostics = {
--       enable = false;
--     }
--   }
-- }
-- require'lspconfig'.rust_analyzer.setup{}
