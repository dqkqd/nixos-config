{
  imports = [
    ./conform.nix

    ./go.nix
    ./nix.nix
    ./typos.nix
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
