return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  opts = {
    options = {
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      globalstatus = true
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {''},
      lualine_x = {''},
      lualine_y = {'progress'},
      lualine_z = {''}
    },
  }
}
