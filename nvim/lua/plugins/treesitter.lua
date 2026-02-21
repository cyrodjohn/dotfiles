return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    config = function()
      local ts = require 'nvim-treesitter'
      local parsers = {
        'bash',
        'c',
        'css',
        'go',
        'gomod',
        'gosum',
        'gowork',
        'html',
        'javascript',
        'json',
        'latex',
        'lua',
        'luadoc',
        'luap',
        'markdown',
        'markdown_inline',
        'php',
        'proto',
        'python',
        'query',
        'regex',
        'rust',
        'scss',
        'svelte',
        'swift',
        'terraform',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'vue',
        'yaml',
        'zig',
      }

      for _, parser in ipairs(parsers) do
        ts.install(parser)
      end

      -- This one i'm not sure
      vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.wo[0][0].foldmethod = 'expr'
      vim.api.nvim_command 'set nofoldenable'

      vim.api.nvim_create_autocmd('FileType', {
        pattern = parsers,
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
