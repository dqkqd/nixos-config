{
  imports = [
    ./conform.nix

    ./go.nix
    ./nix.nix
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;
  };
}
