{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      signature.enabled = true;

      completion = {
        ghost_text.enabled = true;
        documentation = {
          auto_show = true;
        };

        menu = {
          enabled = true;
          auto_show = true;
        };
      };

      keymap = {
        preset = "enter";

        "<Tab>" = [
          "select_next"
          "fallback"
        ];

        "<S-Tab>" = [
          "select_prev"
          "fallback"
        ];
      };
    };
  };
}
