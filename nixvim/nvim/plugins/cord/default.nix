{
  plugins.cord = {
    enable = true;
    settings = {
      display = {
        theme = "catppuccin";
      };
      plugins = {
        __unkeyed-1 = "cord.plugins.diagnostics";
      };
      text = {
        editing.__raw = ''
          function(opts)
            return string.format('Editing %s - %s:%s', opts.filename, opts.cursor_line, opts.cursor_char)
          end
        '';
      };
      buttons = [
        {
          label = "View Repository";
          url.__raw = ''function(opts) return opts.repo_url end'';
        }
      ];
      advanced = {
        server = {
          update = "none";
        };
      };
    };
  };
}
