{
  userCommands = {
    FormatToggle = {
      bang = true;
      command.__raw = ''
        function(args)
          if args.bang then
            -- Toggle formatting for current buffer
            vim.b.disable_autoformat = not vim.b.disable_autoformat
          else
            -- Toggle formatting globally
            vim.g.disable_autoformat = not vim.g.disable_autoformat
          end
        end
      '';
      desc = "Toggle automatic formatting on save";
    };
  };
}
