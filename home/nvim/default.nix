{ inputs, ... }: {
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  programs.nixvim = {
    imports = [
      ./globals.nix
      ./keymaps.nix
      ./plugins/conform-nvim.nix
      ./plugins/lsp.nix
      ./plugins/none-ls.nix
      ./plugins/treesitter.nix
    ];

    enable = true;
    defaultEditor = true;
    clipboard.register = "unnamedplus";

    colorschemes.catppuccin = { enable = true; };

    plugins.lualine.enable = true;
  };
}
