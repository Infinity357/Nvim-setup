return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
    width = 0.85,  -- Adjust width (0.85 = 85% of the screen)
    height = 0.9,  -- Adjust height
    options = {
      signcolumn = "yes",  -- Hide signcolumn
      number = true,  -- Hide line numbers
      relativenumber = true,
      cursorline = true,
    },
  },
    })
  end
}

