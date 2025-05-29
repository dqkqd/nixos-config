{pkgs, ...}: {
  extraPackages = with pkgs; [shfmt];

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        bash = ["shfmt"];
        sh = ["shfmt"];
      };
    };

    lint = {
      lintersByFt = {
        bash = ["bash"];
        sh = ["bash"];
      };
    };
  };

  lsp.servers = {
    bashls = {
      enable = true;
      settings = {
        filetypes = ["bash" "sh"];
      };
    };
  };
}
