-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local map = vim.api.nvim_set_keymap
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local opt = { noremap = true, silent = true }
local opts_remap = { noremap = false, silent = true }
-- NvimTree
map("n", "<A-m>", ":NvimTreeToggle<CR>", { desc = "Open file tree" })
-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find files" })
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", { desc = "Find in files" })
-- visual模式下缩进代码
map("v", "<", "<gv", { desc = "Indent backward" })
map("v", ">", ">gv", { desc = "Indent forward" })
-- 命令行下 Ctrl+j/k  上一个下一个
map("c", "<C-j>", "<C-n>", opts_remap)
map("c", "<C-k>", "<C-p>", opts_remap)
-- Close Other Windows
map("n", "<leader>wo", "<C-w>o", { desc = "W Close Other" })
