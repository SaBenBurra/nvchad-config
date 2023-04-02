local overrides = require "custom.configs.overrides"

local plugins = {
  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  ["sbdchd/neoformat"] = {},
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },
  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },
  ["andweeb/presence.nvim"] = {},
  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  ["NvChad/ui"] = {
    override_options = {
      theme = "gatekeeper",
    },
  },
  ["kdheepak/lazygit.nvim"] = {},
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}

return plugins
