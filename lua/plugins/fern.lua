return
  {
    "lambdalisue/fern.vim",
    config = function()
      --map <leader>e to open the file explorer
      vim.keymap.set('n','<leader>e',':Fern . -drawer -toggle<CR>')
      --map <leader>E to open it in parent directory
      vim.keymap.set('n', '<leader>E',':Fern %:h -toggle<CR>')
      --map <leader>ef to open it hilighting the current file
      vim.keymap.set('n', '<leader>ef',':Fern . -reveal=% -toggle<CR>')
    end
  }

