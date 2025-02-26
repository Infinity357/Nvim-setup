return {
  -- Markdown live preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install", -- Installs dependencies
    ft = "markdown", -- Loads only for Markdown files
  },

  -- Markdown syntax and features
  {
    "preservim/vim-markdown",
    dependencies = { "godlygeek/tabular" }, -- Required for table formatting
    ft = "markdown",
    config = function()
      vim.g.vim_markdown_folding_disabled = 0 -- Enable folding
    end,
  },

  -- Table formatting
  {
    "dhruvasagar/vim-table-mode",
    ft = "markdown",
  },

  -- Automatic table of contents generation
  {
    "mzlogin/vim-markdown-toc",
    ft = "markdown",
  },
}

