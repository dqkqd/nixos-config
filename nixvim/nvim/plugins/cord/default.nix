{helpers, ...}: {
  plugins.cord = {
    enable = true;
    settings = {
      display = {
        theme = "catppuccin";
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
      plugins = helpers.listToUnkeyedAttrs [
        "cord.plugins.diagnostics"
      ];
      advanced = {
        server = {
          update = "none";
        };
      };
    };
  };
}
