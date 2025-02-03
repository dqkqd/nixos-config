{
  keymaps = [
    # format
    {
      key = "<leader>fm";
      action = ":Format<CR>";
      options = {desc = "Format current buffer";};
    }
    {
      key = "<leader>ft";
      action = ":FormatToggle<CR>";
      options = {desc = "Toggle autoformat on-save";};
    }

    # lazygit
    {
      key = "<leader>gg";
      action = ":LazyGit<CR>";
      options = {desc = "Open lazygit gui";};
    }

    # nvim tree
    {
      key = "<leader>nt";
      action = ":NvimTreeToggle<CR>";
      options = {desc = "NvimTree Toggle";};
    }
    {
      key = "<leader>nc";
      action = ":NvimTreeClose<CR>";
      options = {desc = "NvimTree Close";};
    }
    {
      key = "<leader>nf";
      action = ":NvimTreeFocus<CR>";
      options = {desc = "NvimTree Focus";};
    }
    {
      key = "<leader>nb";
      action = ":wincmd p<CR>";
      options = {desc = "NvimTree Focus Editor";};
    }
  ];
}
