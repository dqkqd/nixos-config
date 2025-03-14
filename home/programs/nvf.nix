{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        autocomplete = {
          blink-cmp = {
            enable = true;
          };
        };

        languages = {
          nix = {
            enable = true;
            format.enable = true;
            lsp = {
              enable = true;
              server = "nil";
            };
            treesitter.enable = true;
          };

          enableTreesitter = true;
        };

        lsp = {
          enable = true;
          formatOnSave = true;
          lightbulb.enable = true;
          null-ls.enable = true;
        };
      };
    };
  };
}
