{
  plugins.lualine.settings.options.theme = "catppuccin";

  colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        flavour = "auto";
        integrations = {
          aerial = true;
          blink_cmp = true;
          fzf = true;
          harpoon = true;
          gitsigns = true;
          treesitter = true;
        };
        term_colors = true;
      };
    };
  };
}
