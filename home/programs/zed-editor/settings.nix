{
  lib,
  pkgs,
  ...
}: {
  programs.zed-editor.userSettings = {
    ui_font_family = "FiraCode Nerd Font Mono";
    buffer_font_family = "FiraCode Nerd Font Mono";
    inlay_hints.enabled = true;
    theme = {
      mode = "system";
      # light = "Catppuccin Latte";
      # dark = "Catppuccin Mocha";
    };

    node = {
      path = lib.getExe pkgs.nodejs;
      npm_path = lib.getExe' pkgs.nodejs "npm";
    };

    # load direnv directory
    load_direnv = "shell_hook";

    # vim setup
    vim_mode = true;
    vim = {
      toggle_relative_line_numbers = true;
      use_multiline_find = false;
      use_smartcase_find = false;
    };

    languages = {
      Nix = {
        language_servers = ["nixd" "!nil"];
        format_on_save = "on";
      };

      JSONC = {
        language_servers = ["json-language-server"];
        format_on_save = "on";
      };

      Go = {
        language_servers = ["gopls"];
        format_on_save = "on";
      };
    };

    lsp = {
      gopls = {
        binary = {
          path_lookup = true;
        };
      };

      json-language-server = {
        binary = {
          path = lib.getExe' pkgs.vscode-langservers-extracted "vscode-json-language-server";
          arguments = ["--stdio"];
        };
      };

      nixd = {
        binary = {
          path = lib.getExe pkgs.nixd;
        };
        settings = {
          formatting = {
            command = ["${lib.getExe pkgs.alejandra}" "--quiet" "--"];
          };
        };
      };
    };
  };
}
