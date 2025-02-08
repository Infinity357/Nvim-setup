return {
  'barrett-ruth/live-server.nvim',
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = function ()
    require('live-server').setup({
      args = { '--port=8000', '--browser=/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe' },
       path = vim.fn.expand("%:p")
    })
  end
}
