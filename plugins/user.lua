return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "MunifTanjim/nui.nvim",
  "nvim-lua/plenary.nvim",
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup {
        api_key_cmd = "echo $OPENAI_API_KEY",
        openai_params = {
          model = "gpt-4",
        },
        predefined_chat_gpt_prompts =
        "https://raw.githubusercontent.com/zees-dev/awesome-chatgpt-prompts/main/prompts.csv",
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
