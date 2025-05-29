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
    ./sql.nix
  ];

  plugins.lspconfig.enable = true;
  lsp = {
    inlayHints.enable = true;
    keymaps = [
      {
        key = "<leader>cr";
        lspBufAction = "rename";
      }
    ];
  };
}
