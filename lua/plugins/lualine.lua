return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.extensions = {
        "nvim-tree",
        "toggleterm",
      }
      print(opts.extensions)
    end,
  },
}
