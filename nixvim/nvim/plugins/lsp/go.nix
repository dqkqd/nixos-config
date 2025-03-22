{
  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      go = [
        "goimports"
        "gofumpt"
      ];
    };
  };

  plugins.lsp.servers = {
    gopls = {
      enable = true;
      settings = {
        gopls = {
          # build
          directoryFilters = ["-.direnv" "-.git" "-node_modules"];

          # formatting
          gofumpt = true;

          # ui
          codelenses = {
            gc_details = false;
            generate = true;
            regenerate_cgo = true;
            run_govulncheck = true;
            test = true;
            tidy = true;
            upgrade_dependency = true;
            vendor = true;
          };
          semanticTokens = true;

          # comletion
          usePlaceholders = true;
          completeUnimported = true;

          # diagnostic
          staticcheck = true;

          # inlayhint
          hints = {
            assignVariableTypes = true;
            compositeLiteralFields = true;
            compositeLiteralTypes = true;
            constantValues = true;
            functionTypeParameters = true;
            parameterNames = true;
            rangeVariableTypes = true;
          };
        };
      };
    };
  };
}
