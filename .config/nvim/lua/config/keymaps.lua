-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("n", "<leader>dT", function()
  require("dap").disconnect({ terminateDebuggee = true })
  require("dap").terminate({ all = true })
  require("dap").close()
end, { desc = "Hard terminate" })
