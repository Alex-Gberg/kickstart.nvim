return {
  'stevearc/oil.nvim',
  dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
  lazy = false,
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  config = function()
    local detail = false
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['gd'] = {
          desc = 'Toggle file detail view',
          callback = function()
            detail = not detail
            if detail then
              require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
            else
              require('oil').set_columns { 'icon' }
            end
          end,
        },
      },
    }
  end,
}
