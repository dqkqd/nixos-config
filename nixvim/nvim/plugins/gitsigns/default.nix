{
  plugins.gitsigns = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      current_line_blame = true;

      current_line_blame_opts = {
        delay = 500;
      };
    };
  };
}
