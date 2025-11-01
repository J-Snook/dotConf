-- ~/.config/nvim/lua/plugins/catppuccin.lua

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Make sure to load this before other plugins
  opts = {
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    -- Add any other catppuccin options here
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      -- ... and many more!
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    -- Load the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}
