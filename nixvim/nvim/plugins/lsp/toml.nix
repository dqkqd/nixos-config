{pkgs, ...}: {
  extraPackages = with pkgs; [taplo];

  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        toml = ["taplo"];
      };

      formatters = {
        taplo.command = "taplo fmt";
      };
    };
  };

  lsp.servers = {
    taplo = {
      enable = true;
    };
  };
}
