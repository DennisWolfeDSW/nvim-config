return {
  {
    "marko-cerovac/material.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme material]])
      vim.g.material_style = "darker"
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "drewtempelmeyer/palenight.vim",
  },
}
