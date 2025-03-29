{
  luaLoader.enable = true;

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  opts = {
    completeopt = [
      "menu"
      "menuone"
      "noselect"
    ];
    conceallevel = 2;
    confirm = true;
    cursorline = true;
    expandtab = true;
    foldlevel = 99;
    formatoptions = "jcroqlnt";
    ignorecase = true;
    jumpoptions = "view";
    laststatus = 3;
    linebreak = true;
    list = true;
    mouse = "a";
    number = true;
    relativenumber = true;
    ruler = false;
    scrolloff = 4;
    sessionoptions = ["buffers" "curdir" "tabpages" "winsize" "help" "globals" "skiprtp" "folds"];
    shiftround = true;
    shiftwidth = 2;
    showmode = false;
    signcolumn = "yes";
    smartcase = true;
    smartindent = true;
    spelllang = ["en"];
    tabstop = 2;
    termguicolors = true;
    undofile = true;
    undolevels = 1000;
    wildmode = "longest:full,full";
  };
}
