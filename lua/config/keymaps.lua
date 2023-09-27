-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Jump and center
local centerOpts = { noremap = true, silent = true }
local mappings = { "<C-u>", "<C-d>", "{", "}", "N", "n", "G", "gg", "<C-i>", "<C-o>", "%", "*", "#" }

for _, key in ipairs(mappings) do
  vim.api.nvim_set_keymap("n", key, key .. "zz", centerOpts)
end

-- Auto center after search
vim.api.nvim_create_autocmd("CmdLineLeave", {
  callback = function()
    vim.api.nvim_feedkeys("zz", "n", false)
  end,
})
