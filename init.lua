require("vim-settings")
require("core.keymaps")

--clone for lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

--for live server for html
--vim.api.nvim_create_user_command("LiveServer", function()
  --vim.fn.jobstart({"live-server", "--no-browser"}, { detach = true })
  --vim.fn.jobstart({"xdg-open", "http://localhost:8080"})
--end, {})
--vim.api.nvim_create_user_command("LiveServer", function()
 -- local current_file = vim.fn.expand('%:p')  -- Get the full path of the current file
  --if current_file:match("%.html$") then
    --vim.fn.jobstart({"live-server", current_file, "--no-browser"}, { detach = true })
    --vim.fn.jobstart({"xdg-open", "http://localhost:8080"})

    --print("Live server started for: " .. current_file)
  --else
    --print("Not an HTML file!")
  --end
--end, {})


-- Stop live-server
vim.api.nvim_create_user_command("StopLiveServer", function()
  local pid = vim.fn.systemlist("pgrep -f live-server")
  if pid[1] then
    vim.fn.system("kill " .. pid[1])
    print("Live server stopped.")
  else
    print("Live server not running.")
  end
end, {})

--disable auto-close (for auto closing brackets) in telescope
--vim.cmd([[
--  autocmd FileType TelescopePrompt let b:AutoPairs = 0
--]])

--for splashscreen color
vim.o.termguicolors = true

--calling vim-settings.lua file which holds my basic vim settings
--calling setup for lazy.nvim package manager
require("lazy").setup("plugins")


