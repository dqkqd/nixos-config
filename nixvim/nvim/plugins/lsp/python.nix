{
  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        python = [
          "isort"
          "black"
        ];
      };
    };

    lint = {
      lintersByFt = {
        python = [
          "ruff"
        ];
      };
    };
  };

  lsp.servers = {
    ruff = {
      enable = true;
    };
    basedpyright = {
      enable = true;
    };
  };
}
