{
  plugins.fzf-lua = {
    enable = true;

    keymaps = {
      "<leader>sg" = {
        action = "live_grep";
        options = {
          desc = "Fzf-lua live_grep";
        };
      };
      "<leader>sk" = {
        action = "keymaps";
        options = {
          desc = "Fzf-lua keymaps";
        };
      };
      "<leader>ff" = {
        action = "files";
        options = {
          desc = "Fzf-lua files";
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
