vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--mapping the leader to space
vim.g.mapleader = " "

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


--disable the up and down function of + and - keys in nvim normal mode
vim.keymap.set("n", "+", "<Nop>")
vim.keymap.set("n", "-", "<Nop>")

vim.opt.number = true              -- Show line numbers (adds left padding)
vim.opt.relativenumber = true      --Show relative line number
vim.opt.signcolumn = "yes"         -- Ensures a fixed column on the left
--vim.opt.foldcolumn = "1"           -- Adds 2 extra columns on the left (adjust as needed)
vim.opt.scrolloff = 3              --Adds 3 extra lines on top of code as padding
-- Set the width of the line number column (adds space between line number and text)
vim.opt.numberwidth = 10        -- Increase this number to add more space between line number and broder

-- Match ColorColumn background to make it blend in
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 0, bg = "#2E3440" })


