return { -- Color scheme
  'loctvl842/monokai-pro.nvim',
  priority = 1000,
  opts = {
    background_clear = {},
  },
  config = function()
    vim.cmd.colorscheme 'monokai-pro-spectrum'
    vim.cmd.highlight 'link MiniStatuslineModeNormal Normal' -- normal mode statusline highlighting fix
  end,
}
