local keymap = vim.keymap

-- formatting
keymap.set({ 'n', 'v' }, '<leader>fm', function()
  LazyVim.format { force = true }
end, { desc = 'Format' })

local bufferline = require 'bufferline'
-- stylua: ignore start
keymap.set("n", "<leader>1", function() bufferline.go_to(1) end, { desc = "Goto Buffer 1", silent = true })
keymap.set("n", "<leader>2", function() bufferline.go_to(2) end, { desc = "Goto Buffer 2", silent = true })
keymap.set("n", "<leader>3", function() bufferline.go_to(3) end, { desc = "Goto Buffer 3", silent = true })
keymap.set("n", "<leader>4", function() bufferline.go_to(4) end, { desc = "Goto Buffer 4", silent = true })
keymap.set("n", "<leader>5", function() bufferline.go_to(5) end, { desc = "Goto Buffer 5", silent = true })
keymap.set("n", "<leader>6", function() bufferline.go_to(6) end, { desc = "Goto Buffer 6", silent = true })
keymap.set("n", "<leader>7", function() bufferline.go_to(7) end, { desc = "Goto Buffer 7", silent = true })
keymap.set("n", "<leader>8", function() bufferline.go_to(8) end, { desc = "Goto Buffer 8", silent = true })
keymap.set("n", "<leader>9", function() bufferline.go_to(9) end, { desc = "Goto Buffer 9", silent = true })
keymap.set("n", "<leader>0", function() bufferline.go_to(0) end, { desc = "Goto Buffer -1", silent = true })
keymap.set("n", "<leader>bl", function() bufferline.close_in_direction("right") end, {desc = "Delete buffer in the right", silent = true})
keymap.set("n", "<leader>bh", function() bufferline.close_in_direction("left") end, {desc = "Delete buffer in the left", silent = true})
-- stylua: ignore end
