{
  files = {
    "ftplugin/nix.lua" = {
      extraConfigLuaPost = ''
        vim.keymap.set("i", "#", "X#", { noremap = true, silent = true })
      '';
    };
  };
}
