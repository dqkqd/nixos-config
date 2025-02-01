{
  keymaps = [
    # format
    {
      key = "<leader>fm";
      action.__raw = ''function() require("conform").format() end'';
      options = { desc = "Format current buffer"; };
    }

    # lazygit
    {
      key = "<leader>gg";
      action = ":LazyGit<CR>";
      options = { desc = "Open lazygit gui"; };
    }
  ];

}
