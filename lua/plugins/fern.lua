return
  {
    "lambdalisue/fern.vim",
    config = function()
     --map <leader>e to open the file explorer
      vim.keymap.set('n','<leader>ee',':Fern . <CR>')
      --map <leader>E to open it in parent directory
      vim.keymap.set('n', '<leader>E',':Fern %:h -<CR>')
      --map <leader>ef to open it hilighting the current file
      vim.keymap.set('n', '<leader>ef',':Fern . -reveal=%<CR>')
      --map <leader>e to close the biffer
      vim.keymap.set('n', '<leader>e', ':bd<CR>')


      --other keymaps
      local opts = { noremap = true, silent = true }
      --add a new path with 'na' keymap
      vim.keymap.set('n','na','<Plug>(fern-action-new-path)')
      --keymap to open a file in horizonatal split
      vim.keymap.set('n','H','<Plug>(fern-action-open:split)')
      --keymap to open a file in vertical splie
      vim.keymap.set('n','V','<Plug>(fern-action-open:vsplit)')
    end
  }

