{
  plugins.lsp = {
    enable = true;
    inlayHints = true;

    servers = {
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
