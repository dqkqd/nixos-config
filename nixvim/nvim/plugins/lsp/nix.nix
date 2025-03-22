{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      nix = [
        "alejandra"
      ];
    };

    formatters = {
      alejandra = {
        command = lib.getExe pkgs.alejandra;
      };
    };
  };

  plugins.lsp.servers = {
    nil_ls = {
      enable = true;
      settings = {
        nix = {
          flake = {
            autoArchive = true;
          };
        };
      };
    };
  };
}
