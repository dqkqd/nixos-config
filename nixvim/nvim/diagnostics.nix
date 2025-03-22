{
  diagnostics = {
    underline = true;
    virtual_text = {
      spacing = 4;
      source = "if_many";
      prefix = "●";
    };
    severity_sort = true;

    # TODO: false
    update_in_insert = true;

    jump = {
      float = true;
    };

    signs = {
      text = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "";
        "__rawKey__vim.diagnostic.severity.WARN" = "";
        "__rawKey__vim.diagnostic.severity.HINT" = "󰌵";
        "__rawKey__vim.diagnostic.severity.INFO" = "";
      };
      texthl = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "DiagnosticError";
        "__rawKey__vim.diagnostic.severity.WARN" = "DiagnosticWarn";
        "__rawKey__vim.diagnostic.severity.HINT" = "DiagnosticHint";
        "__rawKey__vim.diagnostic.severity.INFO" = "DiagnosticInfo";
      };
    };
  };
}
