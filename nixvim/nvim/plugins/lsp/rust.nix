{
  plugins.conform-nvim.settings = {
    formatters_by_ft = {
      rust = ["rustfmt"];
    };
  };

  plugins.rustaceanvim = {
    enable = true;

    settings = {
      server = {
        default_settings = {
          rust-analyzer = {
            cargo = {
              features = "all";
              buildScripts.enable = true;
            };

            checkOnSave = true;
            check = {
              command = "clippy";
              features = "all";
            };

            diagnostics = {
              enable = true;
              styleLints.enable = true;
            };

            files = {
              excludeDirs = [
                ".cargo"
                ".direnv"
                ".git"
                "target"
              ];
            };

            procMacro = {
              enable = true;
            };
          };
        };
      };
    };
  };
}
