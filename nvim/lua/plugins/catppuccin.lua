-- ~/.config/nvim/lua/plugins/catppuccin.lua

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, 
  opts = {
    flavour = "macchiato", 
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      which_key = true,
      telescope = true
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    -- Load the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}
