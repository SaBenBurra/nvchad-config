---@type MappingsConfig
local M = {}


M.format = {
  n = {
    ["<C-f>"] = { "<cmd> Neoformat <CR>" },
  },
  i = {
    ["<C-f>"] = { "<cmd> Neoformat <CR>" },
  },
}

M.resizing = {
  n = {
    ["<C-Up>"] = { "<cmd> :resize -1 <CR>" },
    ["<C-Down>"] = { "<cmd> :resize +1 <CR>" },
    ["<C-Left>"] = { "<cmd> :vertical resize -1 <CR>" },
    ["<C-Right>"] = { "<cmd> :vertical resize +1 <CR>" },
  },
  i = {
    ["<C-Up>"] = { "<cmd> :resize -1 <CR>" },
    ["<C-Down>"] = { "<cmd> :resize +1 <CR>" },
    ["<C-Left>"] = { "<cmd> :vertical resize -1 <CR>" },
    ["<C-Right>"] = { "<cmd> :vertical resize +1 <CR>" },
  },
}

M.nvterm = {
  t = {

    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
  n = {

    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
}

-- more keybinds!

return M
