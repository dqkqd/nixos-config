{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    # lazygit
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<cr>";
      options = {
        silent = true;
        desc = "open lazygit";
      };
    }

    ## Fzf-Lua ##
    {
      mode = "n";
      key = "<leader>fz";
      action = "<cmd>FzfLua<cr>";
      options = {
        silent = true;
        desc = "open fzf-lua";
      };
    }
    ## Fzf-Lua ##

    ## git signs ##
    {
      mode = ["n" "v"];
      key = "]h";
      action = "<cmd>Gitsigns next_hunk<cr>";
      options = {
        silent = true;
        desc = "Gitsigns next hunk";
      };
    }
    {
      mode = ["n" "v"];
      key = "[h";
      action = "<cmd>Gitsigns prev_hunk<cr>";
      options = {
        silent = true;
        desc = "Gitsigns prev hunk";
      };
    }
    ## git signs ##

    # general
    {
      # Esc to clear search results
      key = "<esc>";
      action = "<cmd>noh<cr>";
      options = {
        silent = true;
        desc = "clear search result";
      };
    }
  ];
}
