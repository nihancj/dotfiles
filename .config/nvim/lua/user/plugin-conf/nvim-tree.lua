local nvim_tree = require"nvim-tree"

local function on_attach(bufnr)
  local api = require('nvim-tree.api')
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
  vim.keymap.set('n', 'a', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', 'i', api.fs.rename_sub, opts('Rename: Omit Filename'))
  vim.keymap.set('n', 'o', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'r', api.tree.reload, opts('Refresh'))
  vim.keymap.set('n', 'd', api.fs.cut, opts('Cut'))
  vim.keymap.set('n', 'R', api.tree.expand_all, opts('Expand All'))
  vim.keymap.set('n', 'M', api.tree.collapse_all, opts('Collapse'))
  vim.keymap.set('n', ';', api.tree.change_root_to_node, opts('CD'))
end

nvim_tree.setup {
  on_attach = on_attach,
}
