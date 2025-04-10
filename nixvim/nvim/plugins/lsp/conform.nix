{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;

    lazyLoad.settings = {
      cmd = [
        "ConformInfo"
      ];
      event = ["BufWritePre"];
    };

    luaConfig.pre = ''
      local slow_format_filetypes = {}
    '';

    settings = {
      formatters_by_ft = {
        "just" = ["just"];
        "_" = [
          "trim_whitespace"
          "trim_newlines"
        ];
      };

      default_format_opts = {
        lsp_format = "fallback";
      };

      log_level = "off";
      notify_on_error = true;
      notify_no_formatters = true;

      formatters = {
        prettierd.command = lib.getExe pkgs.prettierd;
      };

      format_on_save =
        # Lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_fallback = true }, on_format
           end
        '';

      format_after_save =
        # Lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if not slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            return { lsp_fallback = true }
          end
        '';
    };
  };
}
