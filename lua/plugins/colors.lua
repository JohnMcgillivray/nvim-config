return { -- Color scheme
  'loctvl842/monokai-pro.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'monokai-pro-spectrum'
  end,
}
