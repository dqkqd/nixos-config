{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./globals.nix
    ./keymaps.nix
    ./plugins/conform-nvim.nix
    ./plugins/lsp.nix
    ./plugins/none-ls.nix
    ./plugins/treesitter.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorschemes.catppuccin = { enable = true; };

    plugins.lualine.enable = true;
  };
}
