{
  config,
  pkgs,
  ...
}: {
  # snippets
  plugins.mini.modules.snippets = {
    snippets = {
      __unkeyed-1.__raw = "require('mini.snippets').gen_loader.from_file('${config.plugins.friendly-snippets.package}/snippets/global.json')";
      __unkeyed-2.__raw = "require('mini.snippets').gen_loader.from_lang()";
    };
  };
  plugins.friendly-snippets.enable = true;

  # icons
  plugins.mini.modules.icons = {};

  # providers
  extraPlugins = with pkgs.vimPlugins; [
    blink-cmp-conventional-commits
  ];

  plugins.blink-cmp = {
    enable = true;

    settings = {
      appearance = {
        nerd_font_variant = "mono";
      };

      completion = {
        accept = {
          auto_brackets = {
            enabled = true;
          };
        };
        documentation = {
          auto_show = true;
          auto_show_delay_ms = 200;
        };
        ghost_text = {
          enabled = true;
        };
        menu = {
          draw = {
            treesitter = ["lsp"];
            columns = [
              {
                __unkeyed-1 = "label";
              }
              {
                __unkeyed-1 = "kind_icon";
                __unkeyed-2 = "kind";
                gap = 1;
              }
              {__unkeyed-1 = "source_name";}
            ];
            components = {
              kind_icon = {
                ellipsis = false;
                text.__raw = ''
                  function(ctx)
                    local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                    return kind_icon
                  end,
                  -- Optionally, you may also use the highlights from mini.icons
                  highlight = function(ctx)
                    local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                    return hl
                  end,
                '';
              };
            };
          };
        };
      };

      fuzzy = {
        implementation = "rust";
        prebuilt_binaries = {
          download = false;
        };
      };

      keymap = {
        preset = "enter";
      };

      signature = {
        enabled = true;
      };

      snippets.preset = "mini_snippets";

      sources = {
        default = [
          "lsp"
          "path"
          "snippets"
          "buffer"
          "conventional_commits"
        ];

        providers = {
          conventional_commits = {
            name = "Conventional Commits";
            module = "blink-cmp-conventional-commits";
            enabled.__raw = ''
              function()
                return vim.bo.filetype == 'gitcommit'
              end
            '';
          };
        };
      };

      cmdline.enabled = false;
    };
  };
}
