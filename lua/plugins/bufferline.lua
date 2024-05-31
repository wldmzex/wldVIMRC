return {
  "akinsho/bufferline.nvim",
  keys = {
    -- disable the default flash keymap
    { "<leader>e", mode = { "n", "x", "o" }, false },
    --{ "<leader>t", "<cmd>Neotree<cr>", desc = "Find Files" },
  },
  --  opts = function(_, opts)
  --    opts.filesystem = vim.tbl_deep_extend("force", opts.filesystem, {
  --      window = {
  --        mappings = {
  --          -- ["i"] = { "open", nowait = true },
  --        },
  --      },
  --      --vim.cmd("noremap u <Up>")
  --    })
  --  end,
}
