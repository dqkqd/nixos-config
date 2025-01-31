{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./globals.nix
    ./keymaps.nix
    ./plugins/lsp.nix
    ./plugins/conform-nvim.nix
    ./plugins/none-ls.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorschemes.catppuccin = { enable = true; };

    plugins.lualine.enable = true;
  };
}
