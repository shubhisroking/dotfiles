-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.plugins = {
  { "windwp/nvim-ts-autotag" },
  { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },
  { "NvChad/nvim-colorizer.lua" },
  { "github/copilot.vim" }
}

require("catppuccin").setup {
  color_overrides = {
    mocha = {
      base = "#000000",
      mantle = "#000000",
      crust = "#000000",
    },
  }
}

require 'colorizer'.setup()

lvim.format_on_save.enabled = true
lvim.colorscheme = "catppuccin"
vim.opt.relativenumber = true -- relative line numbers
lvim.builtin.treesitter.autotag.enable = true
