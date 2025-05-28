{
  imports = [
    ./conform.nix
    ./lint.nix

    ./go.nix
    ./shell.nix
    ./markdown.nix
    ./nix.nix
    ./python.nix
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
