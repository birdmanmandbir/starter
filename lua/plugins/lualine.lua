return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.extensions = {
        "neo-tree",
        "toggleterm",
      }
    end,
  },
}
