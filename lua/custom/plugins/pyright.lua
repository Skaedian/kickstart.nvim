-- Pyright documentation: https://microsoft.github.io/pyright/#/configuration?id=sample-pyprojecttoml-file
-- Pyright nvim documentation: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pyright
return {
  vim.lsp.config('pyright', {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = 'openFilesOnly', -- or 'workspace' for stricter checks
          useLibraryCodeForTypes = true,
          typeCheckingMode = 'basic', -- options: 'off', 'basic', 'strict'. Switch off if using ruff.
	  -- disableDiagnostics = true  -- Tried this, didn't work.

        },
      },
    },
  }),

  vim.lsp.enable('pyright'),
}
