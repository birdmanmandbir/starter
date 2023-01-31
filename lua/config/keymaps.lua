-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
local opts_remap = { remap = true, silent = true }
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)
-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下滚动浏览
map("n", "<C-j>", "6j", opt)
map("n", "<C-k>", "6k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "15k", opt)
map("n", "<C-d>", "15j", opt)
-- 退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)
-- 命令行下 Ctrl+j/k  上一个下一个
map("c", "<C-j>", "<C-n>", opts_remap)
map("c", "<C-k>", "<C-p>", opts_remap)
