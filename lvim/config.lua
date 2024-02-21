-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.plugins = {
  { "windwp/nvim-ts-autotag" },
  {
    'catppuccin/nvim',
    name = "catppuccin",
    priority = 1000,
    require("catppuccin").setup {
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      }
    }
  },
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
      config = function()
        require("colorizer").setup()
      end,
    },
  },
  { "github/copilot.vim" }
}

vim.g.copilot_assume_mapped = true
lvim.format_on_save.enabled = true
lvim.colorscheme = "catppuccin"
vim.opt.relativenumber = true -- relative line numbers
lvim.builtin.treesitter.autotag.enable = true
