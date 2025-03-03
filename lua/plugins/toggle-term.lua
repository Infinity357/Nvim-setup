return{
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require("toggleterm").setup({
      shade_terminals = true,
     direction = "float",  -- set terminal direction to float
      float_opts = {
        border = "curved",  -- can also be "single", "double", "shadow", etc.
        winblend = 0,  -- transparency of the floating window
      }
    })
    vim.keymap.set("n", "<space>t", ":ToggleTerm dir=%:p:h<CR>") -- open terminal in the directory of the file 
  end
}
