return
  {
    "jiangmiao/auto-pairs",
    event = "InsertEnter",
    config = function ()
      --all to disable auto-pairs in telescope
      local disable_autopairs_in_telescope = function()
        vim.b.disable_auto_pairs = true
      end

      local enable_autopairs = function()
        vim.b.disable_auto_pairs = false
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "TelescopePrompt",
        callback = disable_autopairs_in_telescope,
      })

      vim.api.nvim_create_autocmd("BufLeave", {
        pattern = "TelescopePrompt",
        callback = enable_autopairs,
      })

    end
  }

