return{
  {
    --mason plugin
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    --mason lsp config plugin
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls"},
        automatic_installation = true,
      })

   end
  },
  {
    --lsp_config plugin
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})


      --to automatically setup lsp when downloading from Mason
      require('mason-lspconfig').setup_handlers({
        function(server)
          lspconfig[server].setup({})
        end
      })

      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",  -- Customize prefix if needed
          spacing = 2,
        },
        signs = true,
        --puts an underline on the word which is not correct
        underline = true,
        --checks for syntax errors in insert mode
        update_in_insert = true,
        severity_sort = true,
        --enables the text which describes your error after your code
        virtual_line = true,
      })


        --keymaps
      --to display keyword info as hover
      vim.keymap.set('n','K' , vim.lsp.buf.hover , {})
      --goto definition
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      --code actions
      vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
