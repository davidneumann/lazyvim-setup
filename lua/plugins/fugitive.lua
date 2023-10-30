return {
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gG", "<cmd>lua print('test?')<cr>", desc = "Git fugitive?" },
    },
    lazy = false,
    cmd = "Git",
  },
}
-- 2023-10-29T22:02:09 LazyVim  WARN `require("lazyvim.plugins.lsp.format")` is deprecated. Please use `require("lazyvim.util").format` instead
