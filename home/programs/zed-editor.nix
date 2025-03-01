{
  lib,
  pkgs,
  ...
}: {
  programs.zed-editor = {
    enable = true;
    extensions = [
      "just"
      "git-firefly"
      "nix"
    ];

    userKeymaps = [
      {
        context = "VimControl && !menu";
        bindings = {
          "space 1" = ["pane::ActivateItem" 0];
          "space 2" = ["pane::ActivateItem" 1];
          "space 3" = ["pane::ActivateItem" 2];
          "space 4" = ["pane::ActivateItem" 3];
          "space 5" = ["pane::ActivateItem" 4];
          "space 6" = ["pane::ActivateItem" 5];
          "space 7" = ["pane::ActivateItem" 6];
          "space 8" = ["pane::ActivateItem" 7];
          "space 9" = ["pane::ActivateItem" 8];

          # navigation
          "space f f" = "file_finder::Toggle";
          "space f g" = "pane::DeploySearch";

          # multiple cursor
          "ctrl-n" = "editor::AddSelectionBelow";
          "ctrl-p" = "editor::SelectNext";
        };
      }
    ];

    userSettings = {
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
  };
}
