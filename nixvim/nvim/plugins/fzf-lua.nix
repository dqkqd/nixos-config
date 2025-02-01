{
  plugins.fzf-lua = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "files";
        options = {
          desc = "Fzf-lua files";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Fzf-lua live_grep";
        };
      };
      "<leader>fk" = {
        action = "keymaps";
        options = {
          desc = "Fzf-lua keymaps";
        };
      };
      "<leader>ca" = {
        action = "lsp_code_actions";
        options = {
          desc = "Fzf-lua lsp_code_actions";
        };
      };
    };

    settings = {
      files = {
        color_icons = true;
        file_icons = true;
        multiprocess = true;
      };
      winopts = {
        treesitter = {
          enabled = true;
        };

        preview = {
          default = "bat";
        };
      };
    };
  };
}
