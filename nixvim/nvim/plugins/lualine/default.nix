{
  plugins.lualine = {
    enable = true;

    lazyLoad.settings.event = [
      "VimEnter"
      "BufReadPost"
      "BufNewFile"
    ];

    # +-------------------------------------------------+
    # | A | B | C                             X | Y | Z |
    # +-------------------------------------------------+
    settings = {
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch" "diff"];
        lualine_c = [
          "filename"
          {
            __unkeyed-1 = "aerial";

            # The number of symbols to render top-down. In order to render only 'N' last
            # symbols, negative numbers may be supplied. For instance, 'depth = -1' can
            # be used in order to render only current symbol.
            depth = 5;

            # When 'dense' mode is on, icons are not rendered near their symbols. Only
            # a single icon that represents the kind of current symbol is rendered at
            # the beginning of status line.
            dense = true;

            # The separator to be used to separate symbols in dense mode.
            dense_sep = ".";

            # Color the symbol icons.
            colored = true;
          }
        ];
        lualine_x = [
          {
            __unkeyed-1 = "diagnostics";
            sources = [
              "nvim_lsp"
              "nvim_diagnostic"
              "nvim_workspace_diagnostic"
            ];
            colored = true;
          }
          {
            __unkeyed-1.__raw = ''
              function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_active_clients()
                  if next(clients) == nil then
                      return msg
                  end
                  for _, client in ipairs(clients) do
                      local filetypes = client.config.filetypes
                      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                          return client.name
                      end
                  end
                  return msg
              end
            '';
            icon = "";
          }
          "filetype"
        ];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
