{inputs, ...}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];

  programs.nixvim = {
    imports = [
      ./colorschemes.nix
      ./globals.nix
      ./keymaps.nix
      ./opts.nix
      ./plugins/bufferline.nix
      ./plugins/blink-cmp.nix
      ./plugins/conform-nvim.nix
      ./plugins/fzf-lua.nix
      ./plugins/gitsigns.nix
      ./plugins/lsp.nix
      ./plugins/none-ls.nix
      ./plugins/nvim-tree.nix
      ./plugins/snacks.nix
      ./plugins/treesitter.nix
      ./plugins/web-devicons.nix
    ];

    enable = true;

    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    withPython3 = true;

    clipboard.register = "unnamedplus";

    # plugins with no setup
    plugins = {
      colorizer.enable = true;
      lazygit.enable = true;
      lualine.enable = true;
      luasnip.enable = true;
      marks.enable = true;
      auto-session.enable = true;
      rustaceanvim.enable = true;
    };
  };
}
