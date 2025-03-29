{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      markdown = [
        "prettierd"
        "markdownlint-cli2"
      ];
    };

    formatters = {
      markdownlint-cli2.command = lib.getExe pkgs.markdownlint-cli2;
    };
  };

  plugins.lsp.servers = {
    marksman = {
      enable = true;
    };
  };
}
