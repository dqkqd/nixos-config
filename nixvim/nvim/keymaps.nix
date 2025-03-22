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

    # general
    {
      # Esc to clear search results
      mode = "n";
      key = "<esc>";
      action = "<cmd>noh<cr>";
      options = {
        silent = true;
        desc = "clear search result";
      };
    }
    # move lines
    {
      mode = "n";
      key = "<M-j>";
      action = "<cmd>execute 'move .+' . v:count1<cr>==";
      options = {desc = "Move Down";};
    }
    {
      mode = "n";
      key = "<M-k>";
      action = "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==";
      options = {desc = "Move Up";};
    }
    {
      mode = "i";
      key = "<M-j>";
      action = "<esc><cmd>m .+1<cr>==gi";
      options = {desc = "Move Down";};
    }
    {
      mode = "i";
      key = "<M-k>";
      action = "<esc><cmd>m .-2<cr>==gi";
      options = {desc = "Move Up";};
    }
    {
      mode = "v";
      key = "<M-j>";
      action = ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv";
      options = {desc = "Move Down";};
    }
    {
      mode = "v";
      key = "<M-k>";
      action = ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv";
      options = {desc = "Move Up";};
    }
  ];
}
