{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    # lazygit
    { mode = "n"; key = "<leader>gg"; action = "<cmd>LazyGit<cr>"; options = { silent = true; desc = "open lazygit"; }; }

    # Fzf-Lua
    { mode = "n"; key = "<leader>fz"; action = "<cmd>FzfLua<cr>"; options = { silent = true; desc = "open fzf-lua"; }; }

    # git signs
    { mode = ["n" "v"]; key = "]h"; action = "<cmd>Gitsigns next_hunk<cr>"; options = { silent = true; desc = "Gitsigns next hunk"; }; }
    { mode = ["n" "v"]; key = "[h"; action = "<cmd>Gitsigns prev_hunk<cr>"; options = { silent = true; desc = "Gitsigns prev hunk"; }; }

    # Esc to clear search results
    { mode = "n"; key = "<esc>"; action = "<cmd>noh<cr>"; options = { silent = true; desc = "clear search result"; }; }

    # move lines
    { mode = "n"; key = "<M-j>"; action = "<cmd>execute 'move .+' . v:count1<cr>=="; options = {desc = "Move Down";}; }
    { mode = "n"; key = "<M-k>"; action = "<cmd>execute 'move .-' . (v:count1 + 1)<cr>=="; options = {desc = "Move Up";}; }
    { mode = "i"; key = "<M-j>"; action = "<esc><cmd>m .+1<cr>==gi"; options = {desc = "Move Down";}; }
    { mode = "i"; key = "<M-k>"; action = "<esc><cmd>m .-2<cr>==gi"; options = {desc = "Move Up";}; }
    { mode = "v"; key = "<M-j>"; action = ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv"; options = {desc = "Move Down";}; }
    { mode = "v"; key = "<M-k>"; action = ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv"; options = {desc = "Move Up";}; }

    # better indenting
    { mode = "v"; key = "<"; action = "<gv"; }
    { mode = "v"; key = ">"; action = ">gv"; }

    # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
    { mode = "n"; key = "n"; action = "'Nn'[v:searchforward].'zv'"; options = { expr = true; desc = "Next Search Result"; }; }
    { mode = "x"; key = "n"; action = "'Nn'[v:searchforward]"; options = { expr = true; desc = "Next Search Result"; }; }
    { mode = "o"; key = "n"; action = "'Nn'[v:searchforward]"; options = { expr = true; desc = "Next Search Result"; }; }
    { mode = "n"; key = "N"; action = "'nN'[v:searchforward].'zv'"; options = { expr = true; desc = "Prev Search Result"; }; }
    { mode = "x"; key = "N"; action = "'nN'[v:searchforward]"; options = { expr = true; desc = "Prev Search Result"; }; }
    { mode = "o"; key = "N"; action = "'nN'[v:searchforward]"; options = { expr = true; desc = "Prev Search Result"; }; }

    # trouble
    { mode = "n"; key = "<leader>xx"; action = "<cmd>Trouble diagnostics toggle<cr>"; options = { silent = true; desc = "Diagnostics (Trouble)"; }; }
    { mode = "n"; key = "<leader>xX"; action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>"; options = { silent = true; desc = "Buffer Diagnostics (Trouble)"; }; }
    { mode = "n"; key = "<leader>cs"; action = "<cmd>Trouble symbols toggle focus=false<cr>"; options = { silent = true; desc = "Symbols (Trouble)"; }; }
    { mode = "n"; key = "<leader>cl"; action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>"; options = { silent = true; desc = "LSP Definitions / references / ... (Trouble)"; }; }
    { mode = "n"; key = "<leader>xL"; action = "<cmd>Trouble loclist toggle<cr>"; options = { silent = true; desc = "Location List (Trouble)"; }; }
    { mode = "n"; key = "<leader>xQ"; action = "<cmd>Trouble qflist toggle<cr>"; options = { silent = true; desc = "Quickfix List (Trouble)"; }; }

    # harpoon
    { mode = "n"; key = "<leader>ha"; action.__raw = "function() require'harpoon':list():add() end"; options = { desc = "Harpoon add"; }; }
    { mode = "n"; key = "<leader>he"; action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end"; options = { desc = "Harpoon open"; }; }
    { mode = "n"; key = "<leader>hn"; action.__raw = "function() require'harpoon':list():next() end"; options = { desc = "Harpoon next"; }; }
    { mode = "n"; key = "<leader>hp"; action.__raw = "function() require'harpoon':list():prev() end"; options = { desc = "Harpoon prev"; }; }
    { mode = "n"; key = "<leader>h1"; action.__raw = "function() require'harpoon':list():select(1) end"; options = { desc = "Harpoon 1"; }; }
    { mode = "n"; key = "<leader>h2"; action.__raw = "function() require'harpoon':list():select(2) end"; options = { desc = "Harpoon 2"; }; }
    { mode = "n"; key = "<leader>h3"; action.__raw = "function() require'harpoon':list():select(3) end"; options = { desc = "Harpoon 3"; }; }
    { mode = "n"; key = "<leader>h4"; action.__raw = "function() require'harpoon':list():select(4) end"; options = { desc = "Harpoon 4"; }; }
    { mode = "n"; key = "<leader>h5"; action.__raw = "function() require'harpoon':list():select(5) end"; options = { desc = "Harpoon 5"; }; }
    { mode = "n"; key = "<leader>h6"; action.__raw = "function() require'harpoon':list():select(6) end"; options = { desc = "Harpoon 6"; }; }
    { mode = "n"; key = "<leader>h7"; action.__raw = "function() require'harpoon':list():select(7) end"; options = { desc = "Harpoon 7"; }; }
    { mode = "n"; key = "<leader>h8"; action.__raw = "function() require'harpoon':list():select(8) end"; options = { desc = "Harpoon 8"; }; }
    { mode = "n"; key = "<leader>h9"; action.__raw = "function() require'harpoon':list():select(9) end"; options = { desc = "Harpoon 9"; }; }
    { mode = "n"; key = "<leader>h0"; action.__raw = "function() require'harpoon':list():select(10) end"; options = { desc = "Harpoon 10"; }; }

    # turn off format
    { mode = "n"; key = "<leader>uf"; action.__raw = "function() vim.cmd('FormatToggle!') end"; options = { silent = true; desc = "Buffer Autoformatting toggle"; }; }
    { mode = "n"; key = "<leader>uF"; action.__raw = "function() vim.cmd('FormatToggle') end"; options = { silent = true; desc = "Global Autoformatting toggle"; }; }

    # search and replace
    { mode = ["n" "v" ]; key = "<leader>sr"; action = "<cmd>GrugFar<cr>"; options = { desc = "Search and Replace"; }; }

    # flash
    { mode = ["n" "x" "o" ]; key = "s"; action.__raw = "function() require'flash'.jump() end"; options = { desc = "Flash"; }; }
    { mode = ["n" "x" "o" ]; key = "S"; action.__raw = "function() require'flash'.treesitter() end"; options = { desc = "Flash Treesitter"; }; }
    { mode = "o"; key = "r"; action.__raw = "function() require'flash'.remote() end"; options = { desc = "Remote Flash"; }; }
    { mode = ["o" "x"]; key = "R"; action.__raw = "function() require'flash'.treesitter_search() end"; options = { desc = "Treesitter Search"; }; }
    { mode = "c"; key = "<c-s>"; action.__raw = "function() require'flash'.toggle() end"; options = { desc = "Toggle Flash Search"; }; }

    # save file
    { mode = ["i" "x" "n" "s" ]; key = "<C-s>"; action = "<cmd>w<cr><esc>"; options = { desc = "Save File"; }; }
  ];
}
