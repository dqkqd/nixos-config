{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;

    lazyLoad.settings = {
      cmd = [
        "ConformInfo"
      ];
      event = ["BufWritePre"];
    };

    settings = {
      formatters_by_ft = {
        nix = [
          "alejandra"
        ];
        go = [
          "goimports"
          "gofumpt"
        ];
      };

      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
      };

      default_format_opts = {
        lsp_format = "fallback";
      };
      format_on_save = {
        lsp_format = "fallback";
        timeout_ms = 500;
      };

      log_level = "off";
      notify_on_error = true;
      notify_no_formatters = true;
    };
  };
}
