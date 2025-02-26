{
  plugins.lsp = {
    enable = true;
    inlayHints = true;

    servers = {
      cssls = {
        enable = true;
        extraOptions = {
          capabilities.textDocument.completion.completionItem.snippetSupport = true;
        };
      };
      gopls.enable = true;
      lua_ls.enable = true;
      nixd.enable = true;
    };

    keymaps = {
      lspBuf = {
        K = {
          action = "hover";
          desc = "Hover";
        };
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gi = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
      };
    };
  };
}
