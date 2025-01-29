return 
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "java", "cpp", "python", "kotlin"},
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  }
