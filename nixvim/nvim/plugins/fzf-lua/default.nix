{
  plugins.fzf-lua = {
    enable = true;

    settings = {
      oldfiles = {
        cwd_only = true;
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

    keymaps = {
      "<leader>ff" = {
        action = "files";
        options = {
          silent = true;
          desc = "FzfLua files";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          silent = true;
          desc = "FzfLua live grep";
        };
      };
      "<leader>ca" = {
        action = "lsp_code_actions";
        options = {
          desc = "FzfLua lsp code actions";
        };
      };
    };
  };
}
