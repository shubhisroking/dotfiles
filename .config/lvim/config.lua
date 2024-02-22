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
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  { "github/copilot.vim" }
}

-- uncomment this to enable emmet_ls
-- require("lvim.lsp.manager").setup("emmet_ls")

vim.cmd [[ au BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif ]] -- Re-Open at last position
vim.g.copilot_assume_mapped = true
lvim.format_on_save.enabled = true
vim.opt.relativenumber = true -- relative line numbers
lvim.builtin.treesitter.autotag.enable = true
