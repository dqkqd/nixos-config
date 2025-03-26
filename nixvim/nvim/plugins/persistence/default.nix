{
  plugins.persistence = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>qs";
      action.__raw = "function() require('persistence').load() end";
      options = {desc = "persistence load session";};
    }
    {
      mode = "n";
      key = "<leader>qS";
      action.__raw = "function() require('persistence').select() end";
      options = {desc = "persistence select a session to load";};
    }
  ];
}
