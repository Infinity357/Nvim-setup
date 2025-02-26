return{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_theme = {
  normal = {
    a = { fg = '#ffffff', bg = '#440014', gui = 'bold' },
    b = { fg = '#ff1453', bg = '#2b000e' },
    c = { fg = '#a30038', bg = '#190008' },
  },
  insert = {
    a = { fg = '#000000', bg = '#ff285f', gui = 'bold' },
    b = { fg = '#ff5a7d', bg = '#2b000e' },
    c = { fg = '#ff4166', bg = '#190008' },
  },
  visual = {
    a = { fg = '#ffffff', bg = '#660020', gui = 'bold' },
    b = { fg = '#ff3a5a', bg = '#2b000e' },
    c = { fg = '#a30038', bg = '#190008' },
  },
  replace = {
    a = { fg = '#ffffff', bg = '#7a0028', gui = 'bold' },
    b = { fg = '#ff1440', bg = '#2b000e' },
    c = { fg = '#a30038', bg = '#190008' },
  },
  command = {
    a = { fg = '#ffffff', bg = '#900030', gui = 'bold' },
    b = { fg = '#ff1440', bg = '#2b000e' },
    c = { fg = '#a30038', bg = '#190008' },
  },
  inactive = {
    a = { fg = '#500020', bg = '#190008', gui = 'bold' },
    b = { fg = '#2b000e', bg = '#190008' },
    c = { fg = '#2b000e', bg = '#190008' },
  },
}

require('lualine').setup {
  options = {
    theme = custom_theme,
    section_separators = {'', ''},
    component_separators = {'', ''},
  }
}

end
}

--other redd and balck themes
--[[
    local custom_theme = {
  normal = {
    a = { fg = '#000000', bg = '#ff4d4d', gui = 'bold' },
    b = { fg = '#ff8080', bg = '#330000' },
    c = { fg = '#ff9999', bg = '#220000' },
  },
  insert = {
    a = { fg = '#000000', bg = '#ff6600', gui = 'bold' },
    b = { fg = '#ff9966', bg = '#330000' },
    c = { fg = '#ffaa80', bg = '#220000' },
  },
  visual = {
    a = { fg = '#000000', bg = '#cc00ff', gui = 'bold' },
    b = { fg = '#e580ff', bg = '#330033' },
    c = { fg = '#f2a3ff', bg = '#220022' },
  },
  replace = {
    a = { fg = '#000000', bg = '#ff0000', gui = 'bold' },
    b = { fg = '#ff4d4d', bg = '#330000' },
    c = { fg = '#ff8080', bg = '#220000' },
  },
  command = {
    a = { fg = '#000000', bg = '#ffaa00', gui = 'bold' },
    b = { fg = '#ffcc66', bg = '#332200' },
    c = { fg = '#ffdd99', bg = '#221100' },
  },
  inactive = {
    a = { fg = '#663333', bg = '#110000', gui = 'bold' },
    b = { fg = '#994d4d', bg = '#220000' },
    c = { fg = '#b36666', bg = '#330000' },
  },
}

require('lualine').setup {
  options = {
    theme = custom_theme,
    section_separators = { left = 'εé┤', right = 'εé╢' },
    component_separators = { left = 'εé╡', right = 'εé╖' },
  },
}
]]

--[[
    local custom_theme = {
  normal = {
    a = { fg = '#ffffff', bg = '#33001a', gui = 'bold' },
    b = { fg = '#ff1a75', bg = '#22000f' },
    c = { fg = '#b30047', bg = '#110008' },
  },
  insert = {
    a = { fg = '#000000', bg = '#ff3385', gui = 'bold' },
    b = { fg = '#ff6699', bg = '#22000f' },
    c = { fg = '#ff4d88', bg = '#110008' },
  },
  visual = {
    a = { fg = '#ffffff', bg = '#550033', gui = 'bold' },
    b = { fg = '#ff4d75', bg = '#22000f' },
    c = { fg = '#b30047', bg = '#110008' },
  },
  replace = {
    a = { fg = '#ffffff', bg = '#660033', gui = 'bold' },
    b = { fg = '#ff1a4d', bg = '#22000f' },
    c = { fg = '#b30047', bg = '#110008' },
  },
  command = {
    a = { fg = '#ffffff', bg = '#800040', gui = 'bold' },
    b = { fg = '#ff1a4d', bg = '#22000f' },
    c = { fg = '#b30047', bg = '#110008' },
  },
  inactive = {
    a = { fg = '#400020', bg = '#110008', gui = 'bold' },
    b = { fg = '#22000f', bg = '#110008' },
    c = { fg = '#22000f', bg = '#110008' },
  },
}

require('lualine').setup {
  options = {
    theme = custom_theme,
    section_separators = {'εé┤', 'εé╢'},
    component_separators = {'εé╡', 'εé╖'},
  }
}
]]
