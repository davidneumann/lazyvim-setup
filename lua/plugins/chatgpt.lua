return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      local home = vim.fn.expand("$HOME")
      print("cat " .. home .. "/.secrets/openai.txt")
      require("chatgpt").setup({
        api_key_cmd = "cat " .. home .. "/.secrets/openai.txt",
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>ad", "<cmd>ChatGPTRun docstring<CR>", desc = "Generate docstring", mode = { "n", "v" } },
      { "<leader>ak", "<cmd>ChatGPTRun keywords<CR>", desc = "Generate keywords", mode = { "n", "v" } },
      { "<leader>ao", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize code", mode = { "n", "v" } },
      { "<leader>as", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize", mode = { "n", "v" } },
      { "<leader>ax", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain code", mode = { "n", "v" } },
      { "<leader>af", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix bugs", mode = { "n", "v" } },
      { "<leader>ar", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen edit", mode = { "n", "v" } },
      {
        "<leader>al",
        "<cmd>ChatGPTRun code_readability_analysis<CR>",
        desc = "Code readability analysis",
        mode = { "n", "v" },
      },
      { "<leader>at", "<cmd>ChatGPTRun translate<CR>", desc = "Translate", mode = { "n", "v" } },
      { "<leader>ag", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar correction", mode = { "n", "v" } },
      { "<leader>aa", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add tests", mode = { "n", "v" } },
      { "<leader>ae", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction", mode = { "n", "v" } },
      { "<leader>ac", "<cmd>ChatGPT<CR>", desc = "ChatGPT", mode = { "n", "v" } },
    },
  },
  {
    "folke/which-key.nvim",
    opts = { defaults = { ["<leader>a"] = { name = "+AI" } } },
  },
}
