return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    keys = {
      { "<leader>a", "<cmd>ASToggle<cr>", desc = "Auto save toggle" },
    },
    opts = {}
  }
}
