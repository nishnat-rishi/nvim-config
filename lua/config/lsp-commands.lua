local M = {}

M.setup = function()
  -- Command to pause all LSP servers
  vim.api.nvim_create_user_command("LspPauseAll", function()
    for _, client in ipairs(vim.lsp.get_active_clients()) do
      vim.lsp.buf_detach_client(0, client.id)
    end
    vim.notify("All LSP servers paused")
  end, {})

  -- Command to resume all LSP servers
  vim.api.nvim_create_user_command("LspResumeAll", function()
    vim.cmd("edit!")
    vim.notify("LSP servers resumed")
  end, {})
end

return M
