return {
  'glepnir/dashboard-nvim',
  opts = {
    theme = 'doom',
    config = {
      header = {
        '',
        '',
        ' ____  ____  _  _  __     __  ____  ____  ____ ',
        '(    \\(  __)/ )( \\(  )   /  \\(  _ \\(  __)(  _ \\',
        ' ) D ( ) _) \\ \\/ // (_/\\(  O )) __/ ) _)  )   /',
        '(____/(____) \\__/ \\____/ \\__/(__)  (____)(__\\_)',
        '',
        '',
        '',
      },
      center = {
        { icon = '  ', desc = 'Find file               ', key = 'leader s n', action = 'Telescope find_files' },
        { icon = '  ', desc = 'Recent files            ', key = 'leader leader', action = 'Telescope oldfiles' },
        { icon = '  ', desc = 'Find Word               ', key = 'leader s g', action = 'Telescope grep_string' },
      },
      footer = {
        '',
        ',---,---,---,---,---,---,---,---,---,---,---,---,---,-------,',
        '| ~ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | [ | ] | <-    |',
        "|---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|",
        '| ->| | " | , | . | P | Y | F | G | C | R | L | / | = |  \\  |',
        "|-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|",
        '| Caps | A | O | E | U | I | D | H | T | N | S | - |  Enter |',
        "|------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|",
        '|        | ; | Q | J | K | X | B | M | W | V | Z |          |',
        "|------,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|",
        '| ctrl |  | alt |                          | alt  |  | ctrl |',
        "'------'  '-----'--------------------------'------'  '------'",
      },
    },
    hide = {
      statusline = false,
      tabline = false,
      winbar = false,
    },
  },
  init = function()
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
    vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#f8f8f2' })
    vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#bd93f9' })
    vim.api.nvim_set_hl(0, 'DashboardKey', { fg = '#6272a4' })
    vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })
  end,
}
