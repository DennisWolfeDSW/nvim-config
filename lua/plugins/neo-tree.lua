return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ action = "focus", source = "filesystem" })
        end,
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ action = "close", source = "filesystem" })
        end,
      },
    },
  },
}
