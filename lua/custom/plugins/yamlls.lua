-- Documentation: https://github.com/redhat-developer/yaml-language-server
return {
  vim.lsp.config('yamlls', {
    settings = {
      filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab", "yaml.helm-values" },
      redhat = {
        telemetry = {
          enabled = false
                     }
                },
      yaml = {
        schemas = {
          ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/refs/heads/master/v1.32.1-standalone-strict/all.json"] = "/*.k8s.yaml",
        },
      },
    }
  }),
vim.lsp.enable('yamlls')
}
