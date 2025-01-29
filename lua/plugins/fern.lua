return
  {
    "lambdalisue/fern.vim",
    config = function()
      --map <leader>e to open the file explorer
      vim.keymap.set('n','<leader>e',':Fern .<CR>')
      --map <leader>E to open it in parent directory
      vim.keymap.set('n', '<leader>E',':Fern %:h<CR>')
      --map <leader>ef to open it hilighting the current file
      vim.keymap.set('n', '<leader>ef',':Fern . -reveal=%<CR>')
      --map <leader>e to open and close and close file explorer
      vim.keymap.set('n', '<leader>q', function()
        local fern_bufnr = nil

        -- Check if a Fern buffer exists
        for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
          if vim.bo[bufnr].filetype == "fern" then
            fern_bufnr = bufnr
            break
          end
        end

        if fern_bufnr then
          -- Close Fern buffer if it's open
          vim.cmd('bdelete ' .. fern_bufnr)
        else
          -- Open Fern file explorer
          vim.cmd('Fern . -drawer')
        end
      end, { noremap = true, silent = true })
    end
  } 
