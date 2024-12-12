return {
  "zbirenbaum/copilot.lua",
  enabled = false,
  lazy = true,
  config = function()
    require("copilot").setup({
      panel = { enabled = false },
      suggestion = { enabled = false, auto_trigger = false },
    })
  end,
}
