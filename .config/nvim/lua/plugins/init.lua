return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "java",
      },
    },
  },
  -- for mason
  {
    "stevearc/dressing.nvim",
    opts = {},
    event = "VeryLazy",
  },
  -- fuzzy finding
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = {
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
    },
  },
  -- gotta fix bad habits
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
  -- I love smoothness
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    opts = {},
  },
  -- undotree, since I don't constantly commit
  {
    "jiaoshijie/undotree",
    ---@module 'undotree.collector'
    ---@type UndoTreeCollector.Opts
    opts = {
      -- your options
    },
    lazy = true,
  },
  -- similar to vscode error dashboard
  {
    "folke/trouble.nvim",
    branch = "main", -- IMPORTANT!
    lazy = false,
    opts = {}, -- for default options, refer to the configuration section for custom setup.
  },
}
