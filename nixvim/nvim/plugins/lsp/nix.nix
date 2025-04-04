{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    conform-nvim.settings = {
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

    lint = {
      lintersByFt = {
        nix = [
          "deadnix"
          "nix"
          "statix"
        ];
      };
      linters = {
        deadnix.cmd = lib.getExe pkgs.deadnix;
        statix.cmd = lib.getExe pkgs.statix;
      };
    };

    lsp.servers = {
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
  };
}
