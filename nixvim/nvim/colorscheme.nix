{
  colorschemes = {
    # TODO: should we use plugins instead?
    catppuccin = {
      enable = true;
      settings = {
        flavour = "auto";
        integrations = {
          blink_cmp = true;
          fzf = true;
          gitsigns = true;
          treesitter = true;
        };
        term_colors = true;
      };
    };
  };
}
