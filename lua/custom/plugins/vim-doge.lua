-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'kkoomen/vim-doge',
  config = function()
    -- Set Sphinx as the default docstring style for Python
    vim.g.doge_doc_standard_python = 'sphinx'
    -- Optional: Additional vim-doge settings
    vim.g.doge_enable_mappings = 1 -- Enable default keymappings
    vim.g.doge_mapping = '<Leader>d' -- Default mapping to generate docstrings
    vim.g.doge_python_settings = {
	single_quotes = 0, -- Use double quotes for docstrings
        omit_redundant_param_types = 1,} -- Omit redundant parameter types
    vim.g.doge_interactive = 1
  end,
}
