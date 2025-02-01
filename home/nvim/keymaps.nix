{
  keymaps = [
    # format
    {
      key = "<leader>fm";
      action = ":Format<CR>";
      options = { desc = "Format current buffer"; };
    }
    {
      key = "<leader>ft";
      action = ":FormatToggle<CR>";
      options = { desc = "Toggle autoformat on-save"; };
    }

    # lazygit
    {
      key = "<leader>gg";
      action = ":LazyGit<CR>";
      options = { desc = "Open lazygit gui"; };
    }
  ];

}
