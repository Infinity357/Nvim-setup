return {
'easymotion/vim-easymotion',
  config = function()
    vim.keymap.set('n' , '<leader><leader>s' , '<Plug>(easymotion-overwin-f)')
    vim.keymap.set('n', '<leader><leader>l' , '<Plug>(easymotion-overwin-line)')
    vim.keymap.set('n', '<leader><leader>w', '<Plug>(easymotion-overwin-w)')
  end
}
