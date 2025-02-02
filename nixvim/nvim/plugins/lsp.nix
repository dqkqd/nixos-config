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

      lua_ls.enable = true;
      nixd.enable = true;
    };
  };
}
