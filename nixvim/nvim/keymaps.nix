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
      key = "<esc>";
      action = "<cmd>noh<cr>";
      options = {
        silent = true;
        desc = "clear search result";
      };
    }
  ];
}
