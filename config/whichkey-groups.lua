-- Register which-key groups after plugins have loaded
-- This overrides any plugin registrations (like gitsigns)
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    -- Defer to ensure all plugins have registered their mappings
    vim.defer_fn(function()
      local wk = require("which-key")
      if wk then
        wk.register({
          ["<leader>g"] = { name = "+Git" },
          ["<leader>h"] = { name = "+Help" },
          ["<leader>a"] = { name = "+Assistant" },
          ["<leader>d"] = { name = "+Debug" },
        })
      end
    end, 100)
  end,
})

