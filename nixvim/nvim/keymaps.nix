{
  keymaps = let
    # buffer line goto keymaps
    buffer_indices = map builtins.toString [1 2 3 4 5 6 7 8 9];
    buffer_keymaps = buf: {
      mode = "n";
      key = "<leader>${buf}";
      action = "<Cmd>BufferLineGoToBuffer ${buf}<CR>";
      options = {
        silent = true;
        desc = "Go to buffer ${buf}";
      };
    };
    buffers_goto_keymaps = map buffer_keymaps buffer_indices;
  in
    buffers_goto_keymaps
    ++ [
      # bufferlines
      {
        mode = "n";
        key = "[b";
        action = "<Cmd>BufferLineCyclePrev<CR>";
        options = {
          silent = true;
          desc = "Go to previous buffer";
        };
      }
      {
        mode = "n";
        key = "]b";
        action = "<Cmd>BufferLineCycleNext<CR>";
        options = {
          silent = true;
          desc = "Go to next buffer";
        };
      }
      {
        mode = "n";
        key = "{b";
        action = "<Cmd>BufferLineMovePrev<CR>";
        options = {
          silent = true;
          desc = "Move current buffer to the left";
        };
      }
      {
        mode = "n";
        key = "}b";
        action = "<Cmd>BufferLineMoveNext<CR>";
        options = {
          silent = true;
          desc = "Move current buffer to the right";
        };
      }
      {
        mode = "n";
        key = "<leader>bl";
        action = "<Cmd>BufferLineCloseRight<CR>";
        options = {
          silent = true;
          desc = "Close all buffers on the right";
        };
      }
      {
        mode = "n";
        key = "<leader>bh";
        action = "<Cmd>BufferLineCloseLeft<CR>";
        options = {
          silent = true;
          desc = "Close all buffers on the left";
        };
      }
      {
        mode = "n";
        key = "<leader>bo";
        action = "<Cmd>BufferLineCloseOthers<CR>";
        options = {
          silent = true;
          desc = "Close all other buffers";
        };
      }

      # format
      {
        mode = "n";
        key = "<leader>fm";
        action = "<Cmd>Format<CR>";
        options = {
          silent = true;
          desc = "Format current buffer";
        };
      }
      {
        mode = "n";
        key = "<leader>ft";
        action = "<Cmd>FormatToggle<CR>";
        options = {
          silent = true;
          desc = "Toggle autoformat on-save";
        };
      }

      # lazygit
      {
        mode = "n";
        key = "<leader>gg";
        action = "<Cmd>LazyGit<CR>";
        options = {
          silent = true;
          desc = "Open lazygit gui";
        };
      }

      # nvim tree
      {
        mode = "n";
        key = "<leader>nt";
        action = "<Cmd>NvimTreeToggle<CR>";
        options = {
          silent = true;
          desc = "NvimTree Toggle";
        };
      }
      {
        mode = "n";
        key = "<leader>nc";
        action = "<Cmd>NvimTreeClose<CR>";
        options = {
          silent = true;
          desc = "NvimTree Close";
        };
      }
      {
        mode = "n";
        key = "<leader>nf";
        action = "<Cmd>NvimTreeFocus<CR>";
        options = {
          silent = true;
          desc = "NvimTree Focus";
        };
      }
      {
        mode = "n";
        key = "<leader>nb";
        action = "<Cmd>wincmd p<CR>";
        options = {
          silent = true;
          desc = "NvimTree Focus Editor";
        };
      }
    ];
}
