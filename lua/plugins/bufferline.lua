return {
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "moll/vim-bbye",
    },
    opts = function(_, opts)
      -- 关闭 Tab 的命令，这里使用 moll/vim-bbye 的 :Bdelete 命令
      opts.options.close_command = "Bdelete! %d"
      opts.options.right_mouse_command = "Bdelete! %d"
      -- 侧边栏配置
      -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
      opts.options.offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
        },
      }
    end,
  },
}
