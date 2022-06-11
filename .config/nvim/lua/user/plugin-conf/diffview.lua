vim.api.nvim_create_user_command("DiffviewToggle", function()
  if require'diffview.lib'.get_current_view() then
    -- Current tabpage is a Diffview
    vim.cmd(":DiffviewClose")
  else
    -- We are not in a Diffview
    vim.cmd(":DiffviewOpen")
  end
end, {})
