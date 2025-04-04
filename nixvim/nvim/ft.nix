{
  files = {
    "ftplugin/nix.lua" = {
      extraConfigLuaPost = ''
        vim.keymap.set("i", "#", "X#", { noremap = true, silent = true })
      '';
    };

    "ftplugin/just.lua" = {
      opts = {
        shiftwidth = 4;
        tabstop = 4;
      };
    };
  };
}
