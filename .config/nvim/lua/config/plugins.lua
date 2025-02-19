return {
  -- ... your other plugins

  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        -- Here you can add Kanagawa's configuration options
        -- For example:
        compile = true, -- Enable compiling the colorscheme
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        dimInactive = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "dragon",
        background = {
          dark = "wave",
          light = "lotus",
        },
      })
      vim.cmd([[colorscheme kanagawa]]) -- Set the colorscheme
    end,
  },
}
