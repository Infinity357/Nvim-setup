return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Custom ASCII Art Header
    dashboard.section.header.val = {
      "██▓ ███▄    █   █████▒██▓ ███▄    █  ██▓▄▄▄█████▓▓██   ██▓";
      "▓██▒ ██ ▀█   █ ▓██   ▒▓██▒ ██ ▀█   █ ▓██▒▓  ██▒ ▓▒ ▒██  ██▒";
      "▒██▒▓██  ▀█ ██▒▒████ ░▒██▒▓██  ▀█ ██▒▒██▒▒ ▓██░ ▒░  ▒██ ██░";
      "░██░▓██▒  ▐▌██▒░▓█▒  ░░██░▓██▒  ▐▌██▒░██░░ ▓██▓ ░   ░ ▐██▓░";
      "░██░▒██░   ▓██░░▒█░   ░██░▒██░   ▓██░░██░  ▒██▒ ░   ░ ██▒▓░";
      "░▓  ░ ▒░   ▒ ▒  ▒ ░   ░▓  ░ ▒░   ▒ ▒ ░▓    ▒ ░░      ██▒▒▒";
      " ▒ ░░ ░░   ░ ▒░ ░      ▒ ░░ ░░   ░ ▒░ ▒ ░    ░     ▓██ ░▒░";
      " ▒ ░   ░   ░ ░  ░ ░    ▒ ░   ░   ░ ░  ▒ ░  ░       ▒ ▒ ░░";
      " ░           ░         ░           ░  ░            ░ ░";
      "                                                   ░ ░";
    };

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#880808", bold = true })
    -- Apply the highlight to the header
    dashboard.section.header.opts.hl = "AlphaHeader"
    -- dashboard.section.header.val = vim.split(vim.fn.system([[echo -e "\e[38;5;52m$(figlet -f Bloody 'INFINITY')\e[0m"]]),"\n")

    -- Custom Buttons
    dashboard.section.buttons.val = {
 --     dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
 --     dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
 --     dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
 --     dashboard.button("q", "  Quit", ":qa<CR>"),
    }


    alpha.setup(dashboard.config)
  end
}

