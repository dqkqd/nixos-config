{
  programs.nixvim = {
    plugins.conform-nvim = {
      enable = true;

      settings = {
        formatters_by_ft = { nix = [ "nixfmt" ]; };
        default_format_opts = { lsp_format = "fallback"; };
        format_on_save = # Lua
          ''
            function(bufnr)
              if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
              end
              return { timeout_ms = 500, lsp_format = "fallback" }
            end
          '';
        format_after_save = { lsp_format = "fallback"; };
        log_level = "warn";
      };
    };
  };
}
