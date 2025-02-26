return {
  {
    "EdenEast/nightfox.nvim" ,
    name = "nightfox",
    config = function()
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function ()
      require("tokyonight").setup({
        transparent = true
      })
    end
  },
  -- lua/plugins/rose-pine.lua
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine-moon")
    end
  }
}
