return {
  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = {
      { "<A-m>", "<leader>fe", desc = "Toggle NeoTree", remap = true },
    },
    opts = {
      window = {
        mappings = {
          ["o"] = "open_tabnew",
        },
      },
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = true,
      },
    },
  },
}
