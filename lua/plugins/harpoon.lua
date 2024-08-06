return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon [A]dd' })
    vim.keymap.set('n', '<leader>j', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon List' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-J>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon Next' })
    vim.keymap.set('n', '<C-S-K>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon Prev' })
  end,
}
