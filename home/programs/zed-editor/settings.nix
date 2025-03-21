{
  lib,
  pkgs,
  ...
}: {
  programs.zed-editor.userSettings = {
    # Zed cannot correctly finds font atm. See: <https://github.com/zed-industries/zed/issues/18982>
    ui_font_family = "Zed Plex Mono";
    buffer_font_family = "Zed Plex Mono";
    buffer_font_weight = 550;
    terminal.font_family = "Zed Plex Mono";

    # inlay hints
    inlay_hints = {
      enabled = true;
      show_type_hints = true;
      show_parameter_hints = true;
      show_other_hints = true;
      show_background = false;
    };

    # theme
    theme = {
      mode = "system";
      # light = "Catppuccin Latte";
      # dark = "Catppuccin Mocha";
    };
    icon_theme = "Catppuccin Latte";

    # disable telemetry log
    telemetry = {
      diagnostics = false;
      metrics = false;
    };

    # disable auto update
    auto_update = false;

    # disable ai
    assistant = {
      version = "2";
      enabled = false;
    };

    # tabs
    tabs = {
      git_status = true;
      file_icons = true;
      show_diagnostics = "all";
    };

    # git
    git = {
      inline_blame = {
        enabled = true;
        show_commit_summary = true;
      };
    };

    # not sure why but zed needs node
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
      use_multiline_find = true;
      use_smartcase_find = true;
    };

    languages = {
      Go = {
        language_servers = ["gopls" "..."];
        formatter = [
          {
            external = {command = "goimports";};
          }
          {
            external = {command = "gofumpt";};
          }
        ];
        format_on_save = "on";
      };

      JSONC = {
        language_servers = ["json-language-server"];
        format_on_save = "on";
      };

      Nix = {
        language_servers = ["nixd" "!nil"];
        format_on_save = "on";
      };

      Markdown = {
        format_on_save = "on";
      };
    };

    lsp = {
      gopls = {
        binary = {
          path_lookup = true;
        };
        initialization_options = {
          gofumpt = true;
          codelenses = {
            gc_details = false;
            generate = true;
            regenerate_cgo = true;
            run_govulncheck = true;
            test = true;
            tidy = true;
            upgrade_dependency = true;
            vendor = true;
          };
          hints = {
            assignVariableTypes = true;
            compositeLiteralFields = true;
            compositeLiteralTypes = true;
            constantValues = true;
            functionTypeParameters = true;
            parameterNames = true;
            rangeVariableTypes = true;
          };
          analyses = {
            nilness = true;
            unusedparams = true;
            unusedwrite = true;
            useany = true;
          };
          usePlaceholders = true;
          completeUnimported = true;
          staticcheck = true;
          semanticTokens = true;
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

      marksman = {
        binary = {
          path = lib.getExe pkgs.marksman;
        };
      };

      typos = {
        binary = {
          path = lib.getExe pkgs.typos-lsp;
        };
      };
    };
  };
}
