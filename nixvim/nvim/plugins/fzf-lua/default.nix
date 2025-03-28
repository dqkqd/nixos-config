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
      fzf_colors = true;
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
        action = "git_files";
        options = {
          silent = true;
          desc = "FzfLua git_files";
        };
      };
      "<leader>sg" = {
        action = "live_grep";
        options = {
          silent = true;
          desc = "FzfLua live_grep";
        };
      };
      "<leader>sk" = {
        action = "keymaps";
        options = {
          silent = true;
          desc = "FzfLua keymaps";
        };
      };

      ## lsp ##
      "gd" = {
        mode = "n";
        action = "lsp_definitions";
        options = {
          desc = "FzfLua lsp_definitions";
        };
      };
      "gD" = {
        mode = "n";
        action = "lsp_declarations";
        options = {
          desc = "FzfLua lsp_declarations";
        };
      };
      "gr" = {
        mode = "n";
        action = "lsp_references";
        options = {
          desc = "FzfLua lsp_references";
        };
      };
      "<leader>ca" = {
        mode = ["n" "x"];
        action = "lsp_code_actions";
        options = {
          desc = "FzfLua lsp_code_actions";
        };
      };
      ## lsp ##
    };
  };
}
