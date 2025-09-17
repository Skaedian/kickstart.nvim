return {

  {
    'nvimtools/none-ls.nvim',
      dependencies = {
        'nvimtools/none-ls-extras.nvim',
        'jayp0521/mason-null-ls.nvim', -- ensure dependencies are installed
      },
      config = function()
        -- list of formatters & linters for mason to install
        require('mason-null-ls').setup {
          ensure_installed = {
            'ruff', -- Python linter and formatter;
            'prettier', -- ts/js/yaml/markdown formatter
            'shfmt', -- Shell Script formatter
          },
          -- auto-install configured formatters & linters (with null-ls)
          automatic_installation = true,
        }
        local null_ls = require 'null-ls'
        local sources = {
          require('none-ls.formatting.ruff').with { extra_args = { '--extend-select', 'I' } },
          require 'none-ls.formatting.ruff_format',
          null_ls.builtins.formatting.prettier.with { filetypes = {'json', 'yaml', 'markdown' } },
          null_ls.builtins.formatting.shfmt.with { args = { '-i', '4' } }, -- Format shell scripts with 4 spaces for indentation
          require('none-ls.diagnostics.ruff'),  -- This gives syntax errors and warnings for python
        }
        null_ls.setup {
          -- debug = true, -- Enable debug mode. Inspect logs with :NullLsLog.
          sources = sources,
          -- Previously, this space had config to auto format file upon save (now removed)
        }
      end,
    }
}
