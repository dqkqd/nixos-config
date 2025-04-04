{
  imports = [
    ./conform.nix
    ./lint.nix

    ./go.nix
    ./markdown.nix
    ./nix.nix
    ./rust.nix
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
