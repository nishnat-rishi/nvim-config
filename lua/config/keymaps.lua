-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>kp", ":LspPauseAll<CR>", { noremap = true, silent = true, desc = "Pause all LSP servers" })
vim.keymap.set(
  "n",
  "<leader>kr",
  ":LspResumeAll<CR>",
  { noremap = true, silent = true, desc = "Resume all LSP servers" }
)
