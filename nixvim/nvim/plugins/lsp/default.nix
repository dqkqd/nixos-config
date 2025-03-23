{
  imports = [
    ./conform.nix

    ./go.nix
    ./nix.nix
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;

    keymaps = {
      lspBuf = {
        "<leader>cr" = "rename";
      };
    };
  };
}
