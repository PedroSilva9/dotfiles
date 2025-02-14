return {
  {
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        styles = {
          italic = false,
        },
      }
      -- vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    name = 'vscode',
    config = function()
      local c = require('vscode.colors').get_colors()
      require('vscode').setup {
        -- Alternatively set style in setup
        -- style = 'light'

        -- Enable transparent background
        transparent = false,

        -- Enable italic comment
        italic_comments = false,

        -- Underline `@markup.link.*` variants
        underline_links = true,
        disable_nvimtree_bg = true,
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        },
      }
      vim.cmd.colorscheme 'vscode'
    end,
  },
  { 'ellisonleao/gruvbox.nvim', priority = 1000 },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
      }
    end,
  },
  {
    'erikbackman/brightburn.vim',
  },
}
