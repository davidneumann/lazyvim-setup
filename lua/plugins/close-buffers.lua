return {
  {
    "Asheq/close-buffers.vim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>bo",
        "<cmd>Bdelete hidden<cr>",
        desc = "Close all hidden buffers",
        mode = { "n", "v" },
      },
    },
  },
}
