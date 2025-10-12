-- Documentation: https://github.com/CopilotC-Nvim/CopilotChat.nvim
-- YouTube video: https://www.youtube.com/watch?v=B8BoPkga-_E

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      { "github/copilot.vim" },

    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot"},
      { "<leader>zc", ":CopilotChat<CR>", mode = "v", desc = "Chat with Copilot"},
      { "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code"},
      { "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code"},
      { "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues"},
      { "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code"},
      { "<leader>zm", ":CopilotChatModels<CR>", mode = "v", desc = "Choose Different Copilot Model"},
      { "<leader>zm", ":CopilotChatModels<CR>", mode = "n", desc = "Choose Different Copilot Model"},
      { "<leader>zx", ":CopilotChatClose<CR>", mode = "n", desc = "Close Copilot Chat (x = exit)"},
      { "<leader>zx", ":CopilotChatClose<CR>", mode = "v", desc = "Close Copilot Chat (x = exit)"},
      { "<leader>zx", ":CopilotChatClose<CR>", mode = "i", desc = "Close Copilot Chat (x = exit)"},


    }
  },
}
