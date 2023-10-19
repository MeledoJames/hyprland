return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<M-CR>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })

      vim.keymap.set("i", "<M-c>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true })
      vim.keymap.set("n", "<leader>ci", function()
        if vim.g.codeium_enabled == true then
          vim.cmd("CodeiumDisable")
        else
          vim.cmd("CodeiumEnable")
        end
      end, { noremap = true, desc = "Toggle Codeium" })
    end,
  },
}
