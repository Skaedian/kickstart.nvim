-- See ruff documentation here: https://docs.astral.sh/ruff/editors/settings/

return {
  vim.lsp.config('ruff', {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
    init_options = {
      settings = {
	lint = {
          enable = true,
          preview = true,
	  select = { "E", "F" },  -- This enables all PEP standards starting with "E" and "F".
	  ignore = { "F401" , "F821" },  -- Use this to exclude certain PEP standards, like E501 (line too long). Can also be used to suppress warnings already in pyright, like F401 (unused imports).
	  -- extendSelect = {"W"},  -- This is used for additional selects. E.g. in 'ignore' we may have "E5", then we can add "E501" here to enable it.
        },
        lineLength = 100,  -- Default is 88. Increate this for terminals that have more characters in a line.
        -- fixAll = false,
      },
    },
  }),

  vim.lsp.enable('ruff'),
}

