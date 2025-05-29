{
  imports = [
    ./conform.nix
    ./lint.nix

    ./go.nix
    ./markdown.nix
    ./nix.nix
    ./python.nix
    ./rust.nix
    ./shell.nix
    ./sql.nix
    ./typos.nix
    ./yaml.nix
    ./toml.nix
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
