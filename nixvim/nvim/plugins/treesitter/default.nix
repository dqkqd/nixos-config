{
  plugins.treesitter = {
    enable = true;
    settings = {
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = true;
        disable =
          # Lua
          ''
            function(lang, bufnr)
              return vim.api.nvim_buf_line_count(bufnr) > 10000
            end
          '';

        # TODO: incremental_selection

        indent.enable = true;
      };
    };
  };
}
