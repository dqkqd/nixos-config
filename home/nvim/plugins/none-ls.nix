{
  plugins.none-ls = {
    enable = true;
    sources = {
      formatting = {
        nixfmt.enable = true;
        stylua.enable = true;
      };
    };
  };
}
