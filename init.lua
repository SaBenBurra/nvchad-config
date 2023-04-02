local function set_nvimtree_startup_directory()
  vim.cmd "if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |  wincmd p | enew | execute 'cd '.argv()[0] | endif "
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = set_nvimtree_startup_directory })
vim.wo.relativenumber = true
vim.g.nvim_tree_group_empty = 1

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.java" },
  command = "silent !mvn compile &",
})
vim.keymap.set("n", "<space>cd", vim.diagnostic.open_float)

local function lspStartOnDartFile()
  if vim.bo.filetype == "dart" then
    vim.cmd ":LspStart"
  end
  vim.cmd ":stopinsert"
end
vim.keymap.set("i", "<C-c>", lspStartOnDartFile)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


