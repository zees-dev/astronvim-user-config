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
  -- {
  --   "lewis6991/hover.nvim",
  --   config = function()
  --     require("hover").setup {
  --       init = function()
  --         -- Require providers
  --         require "hover.providers.lsp"
  --         -- require('hover.providers.gh')
  --         -- require('hover.providers.gh_user')
  --         -- require('hover.providers.jira')
  --         -- require('hover.providers.man')
  --         -- require('hover.providers.dictionary')
  --       end,
  --       preview_opts = {
  --         border = nil,
  --       },
  --       -- Whether the contents of a currently open hover window should be moved
  --       -- to a :h preview-window when pressing the hover keymap.
  --       preview_window = false,
  --       title = true,
  --     }
  --
  --     -- Setup keymaps
  --     vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
  --     vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
  --   end,
  -- },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },

  "Mofiqul/vscode.nvim",
  {
    "ggandor/leap.nvim",
    config = function() require("leap").add_default_mappings() end,
    dependencies = {
      "tpope/vim-repeat",
    },
    lazy = false,
  },

  {
    "folke/todo-comments.nvim",
    config = function() require("todo-comments").setup {} end,
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
  },
}
