require'lspconfig'.tsserver.setup{}
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
