vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--mapping the leader to space
vim.g.mapleader = " "

-----------------------------------------------------------------------------------------------------------------------------------------------
--for clipboard
vim.api.nvim_set_option("clipboard","unnamed")
--clipboard
vim.g.clipboard = {
  name = "xclip",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe -command Get-Clipboard",
    ["*"] = "powershell.exe -command Get-Clipboard",
  },
  cache_enabled = 0,
}

-----------------------------------------------------------------------------------------------------------------------------------------------

--disable the up and down function of + and - keys in nvim normal mode
vim.keymap.set("n", "+", "<Nop>")
vim.keymap.set("n", "-", "<Nop>")

vim.opt.number = true              -- Show line numbers (adds left padding)
vim.opt.relativenumber = true      --Show relative line number
vim.opt.signcolumn = "yes"         -- Ensures a fixed column on the left
--vim.opt.foldcolumn = "1"           -- Adds 2 extra columns on the left (adjust as needed)
vim.opt.scrolloff = 3              --Adds 3 extra lines on top of code as padding
-- Set the width of the line number column (adds space between line number and text)
vim.opt.numberwidth = 7        -- Increase this number to add more space between line number and broder

-- Match ColorColumn background to make it blend in
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 0, bg = "#2E3440" })

-----------------------------------------------------------------------------------------------------------------------------------------------
--for Markdown Wirting

--Enable Spell Checking for Markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true -- Enable spell checking only for Markdown files
  end,
})

--Enable Markdown Folding
vim.g.vim_markdown_folding_disabled = 0 -- Enable folding
vim.opt.foldlevel = 99 -- Open all folds by default
vim.opt.foldmethod = "expr" -- Use expression-based folding
vim.opt.foldexpr = "vim_markdown#FoldLevel(v:lnum)" -- Define how Markdown headings fold

-- to use markdown preview type -- :MarkdownPreview
