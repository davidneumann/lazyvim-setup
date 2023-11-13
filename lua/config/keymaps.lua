-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Jump and center
local centerOpts = { noremap = true, silent = true }
local mappings = { "<C-u>", "<C-d>", "{", "}", "N", "n", "<C-i>", "<C-o>", "%", "*", "#" }

for _, key in ipairs(mappings) do
  vim.api.nvim_set_keymap("n", key, key .. "zz", centerOpts)
end

-- Auto center after search
vim.api.nvim_create_autocmd("CmdLineLeave", {
  callback = function()
    vim.api.nvim_feedkeys("zz", "n", false)
  end,
})

-- Disable lazygit keymaps
vim.keymap.del("n", "<leader>gg")
-- vim.keymap.del("n", "<leader>gG")

-- Not sure why I have to put this here
vim.keymap.set("n", "<leader>gg", "<cmd>Git<cr>")

-- Noop some keys that conflict my with tiling window manager
vim.keymap.set({ "n", "v", "x" }, "<S-A-Return>", "<nop>")
vim.keymap.set({ "n", "v", "x" }, "<C-A-h>", "<nop>")
vim.keymap.set({ "n", "v", "x" }, "<C-A-l>", "<nop>")
vim.keymap.set({ "n", "v", "x" }, "<C-A-j>", "<nop>")
vim.keymap.set({ "n", "v", "x" }, "<C-A-k>", "<nop>")
