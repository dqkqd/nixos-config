{
  plugins.blink-cmp = {
    enable = true;

    settings = {
      appearance = {
        use_nvim_cmp_as_default = false;
        nerd_font_variant = "normal";
      };

      completion = {
        accept.auto_brackets.enabled = true;

        ghost_text.enabled = true;

        documentation = {
          auto_show = true;
          auto_show_delay_ms = 200;
        };

        menu = {
          enabled = true;
          auto_show = true;
          draw.treesitter = ["lsp"];
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

      signature.enabled = true;
      sources = {
        cmdline = [];
        default = ["lsp" "path" "snippets" "luasnip" "buffer"];
      };
    };
  };
}
