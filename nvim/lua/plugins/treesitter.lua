return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",       -- update parsers automatically
  lazy = false,              -- load immediately
  opts = {
    ensure_installed = { "c", "cpp", "cmake", "lua", "python", "javascript", "html", "css" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

