-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Jump and center
local centerOpts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-u>", "<C-u>zz", centerOpts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", centerOpts)
vim.keymap.set("n", "{", "{zz", centerOpts)
vim.keymap.set("n", "}", "}zz", centerOpts)
vim.keymap.set("n", "N", "Nzz", centerOpts)
vim.keymap.set("n", "n", "nzz", centerOpts)
vim.keymap.set("n", "G", "Gzz", centerOpts)
vim.keymap.set("n", "gg", "ggzz", centerOpts)
vim.keymap.set("n", "<C-i", "<C-i>zz", centerOpts)
vim.keymap.set("n", "<C-o>", "<C-o>zz", centerOpts)
vim.keymap.set("n", "%", "%zz", centerOpts)
vim.keymap.set("n", "*", "*zz", centerOpts)
vim.keymap.set("n", "#", "#zz", centerOpts)

-- Auto center after search
vim.api.nvim_create_autocmd("CmdLineLeave", {
  callback = function()
    vim.api.nvim_feedkeys("zz", "n", false)
  end,
})
