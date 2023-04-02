local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = false,
  },
  renderer = {
    highlight_git = true,
    full_name = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    adaptive_size = true,
    side = "right",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<C-o>", action = "cd" },
      },
    },
  },
}

return M
