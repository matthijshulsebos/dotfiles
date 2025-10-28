return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = { flavour = "mocha" },
  config = function()
    vim.cmd.colorscheme("catppuccin")  -- only run after plugin is loaded
  end,
}

