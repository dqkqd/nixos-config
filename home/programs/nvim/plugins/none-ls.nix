{
  plugins.none-ls = {
    enable = true;
    sources = {
      completion = {
        luasnip.enable = true;
      };

      formatting = {
        alejandra.enable = true;
        goimports.enable = true;
        gofmt.enable = true;
        prettierd.enable = true;
        stylua.enable = true;
      };
    };
  };
}
