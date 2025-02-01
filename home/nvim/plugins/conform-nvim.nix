{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      formatters_by_ft = { nix = [ "nixfmt" ]; };
      format_on_save = # Lua
        ''
              function(bufnr)
                if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          	return
                end
                return { timeout_ms = 500, lsp_format = "fallback" }
              end
        '';

      format_after_save = # Lua
        ''
              function(bufnr)
                if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          	return
                end
                return { lsp_format = "fallback" }
              end
        '';
      log_level = "warn";
    };
  };

  userCommands = {
    Format = {
      command = ''
        lua require("conform").format({ async = true, lsp_format = "fallback"})
      '';
      desc = "Format current buffer";
    };

    FormatToggle = {
      command.__raw = ''
                        function()
        	          vim.g.disable_autoformat = not vim.g.disable_autoformat
        	          vim.b.disable_autoformat = not vim.b.disable_autoformat
                	end
      '';
      desc = "Toggle autoformat on-save";
    };

  };
}
