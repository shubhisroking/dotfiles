-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.plugins = {
  { "windwp/nvim-ts-autotag" },
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
      config = function()
        require("colorizer").setup()
      end,
    },
  },
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    }
  },
  { "github/copilot.vim" }
}

vim.opt.confirm = true
vim.g.copilot_assume_mapped = true
lvim.format_on_save.enabled = true
vim.opt.relativenumber = true -- relative line numbers
lvim.builtin.treesitter.autotag.enable = true
