{pkgs, ...}: {
  extraPackages = with pkgs; [yamllint];

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        yaml = ["prettierd"];
        yml = ["prettierd"];
      };
    };

    lint = {
      lintersByFt = {
        yaml = ["yamllint"];
        yml = ["yamllint"];
      };
    };
  };

  lsp.servers = {
    yamlls = {
      enable = true;
    };
  };
}
