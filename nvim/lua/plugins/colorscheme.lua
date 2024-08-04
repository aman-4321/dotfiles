return {
  --   {
  --     "catppuccin/nvim",
  --     lazy = true,
  --     name = "catppuccin",
  --     opts = {
  --       transparent_background = true,
  --       integrations = {
  --         aerial = true,
  --         alpha = true,
  --         cmp = true,
  --         dashboard = true,
  --         flash = true,
  --         gitsigns = true,
  --         headlines = true,
  --         illuminate = true,
  --         indent_blankline = { enabled = true },
  --         leap = true,
  --         lsp_trouble = true,
  --         mason = true,
  --         markdown = true,
  --         mini = true,
  --         native_lsp = {
  --           enabled = true,
  --           underlines = {
  --             errors = { "undercurl" },
  --             hints = { "undercurl" },
  --             warnings = { "undercurl" },
  --             information = { "undercurl" },
  --           },
  --         },
  --         navic = { enabled = true, custom_bg = "lualine" },
  --         neotest = true,
  --         neotree = true,
  --         noice = true,
  --         semantic_tokens = true,
  --         telescope = true,
  --         treesitter = true,
  --         treesitter_context = true,
  --         which_key = true,
  --       },
  --     },
  --   },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
  -- Add Gruvbox
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --     transparent_mode = true,
  --   },
  -- },
  -- Add Rose Pine
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1003,
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = true, -- Set this to true
        },
      })
      vim.cmd("colorscheme rose-pine-moon")
      vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
    end,
    opts = {},
  },
  require("notify").setup({
    background_colour = "#000000",
  }),
}
