{inputs, ...}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];

  programs.nixvim = {
    imports = [
      ./globals.nix
      ./keymaps.nix
      ./opts.nix
      ./plugins/conform-nvim.nix
      ./plugins/fzf-lua.nix
      ./plugins/lazygit.nix
      ./plugins/lsp.nix
      ./plugins/none-ls.nix
      ./plugins/treesitter.nix
    ];

    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    withPython3 = true;

    clipboard.register = "unnamedplus";

    colorschemes.catppuccin = {enable = true;};

    plugins.lualine.enable = true;
  };
}
