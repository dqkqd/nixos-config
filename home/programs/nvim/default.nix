{inputs, ...}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];

  programs.nixvim = {
    imports = [
      ./colorschemes.nix
      ./globals.nix
      ./keymaps.nix
      ./opts.nix
      ./plugins/blink-cmp.nix
      ./plugins/conform-nvim.nix
      ./plugins/fzf-lua.nix
      ./plugins/lazygit.nix
      ./plugins/lsp.nix
      ./plugins/none-ls.nix
      ./plugins/treesitter.nix
      ./plugins/web-devicons.nix
    ];

    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    withPython3 = true;

    clipboard.register = "unnamedplus";

    plugins.lualine.enable = true;
  };
}
