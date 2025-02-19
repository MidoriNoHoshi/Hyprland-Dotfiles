return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
                              ███████
                           █████████████
                          ███████████████
                        ███████████████████
                       █████████████████████
                       █████████████████████
                       █████████████████████
           ██████       ███████████████████       ██████
        █████████████    █████████████████     ████████████
      █████████████████   ███████████████    ████████████████
     ███████████████████    ███████████    ███████████████████
    ████████████████████        ███        ████████████████████
    █████████████████████  ███   █   ███  █████████████████████
    █████████████████████  ████     ████  █████████████████████
    ██████████████████████      ███      ██████████████████████
     ███████████████████████  ███████  ███████████████████████
      █████████████████       ███████       █████████████████
       ███████████████  ████  ███████  ████  ███████████████
          █████████     ███     ███     ███     █████████
                             ██     ██
                   ████    ███  ███  ███    ████
                ██████████████  ███  ██████████████
              ████████████████   █   ████████████████
             ██████████████████     ██████████████████
            ████████████████████   ████████████████████
            ████████████████████   ████████████████████
            ████████████████████   ████████████████████
            ████████████████████   ████████████████████
             ██████████████████     ██████████████████
              ████████████████       ████████████████
               █████████████           █████████████
                  ███████                 ███████
                          大阪天満宮 家紋
      ]]

      --       [[
      --           //  (It is a Goblin Shark btw.)
      --       __/  /
      --     _--  ./         ░▒▓███████▓▒░ ░▒▓████████▓▒░░▒▓██████████████▓▒░ ░▓█▓▒░            Z
      --     /   _-\         ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒         Z
      -- ~~~   /   \\         ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓░░▒▓█▓▒     z
      --   /   /              ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  z
      -- {  -__|\          ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
      -- \      / |_        ░▒▓█▓▒░░▒▓█▓▒░░▒▓████████▓▒░░▒▓▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  Tis' but raven
      --   \        :,---__.
      --   \__,,, \\      0_-\:
      --       ---__\   /,
      --         // /___---\
      --         /_/
      --     ~~~/      ]]
      --
      --       [[
      --           //  (It is a Goblin Shark btw.)
      --       __/  /
      --     _--  ./         ░▒▓███████▓▒░ ░▒▓████████▓▒░░▒▓██████████████▓▒░ ░▒▓█▓▒░           ░▒▓█▓▒░        ░▒▓██████▓▒░ ░▒▓████████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████████████▓▒░            Z
      --     /   _-\         ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░          ░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░       Z
      -- ~~~   /   \\         ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░         ░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░     ░▒▓██▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░   z
      --   /   /              ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░         ░▒▓█▓▒░       ░▒▓████████▓▒░   ░▒▓██▓▒░    ░▒▓██████▓▒░  ░▒▓█▓▒▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ z
      -- {  -__|\          ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░             ░▒▓█▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░          ░▒▓█▓▒░      ░▒▓█▓▓█▓▒░  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
      -- \      / |_        ░▒▓█▓▒░░▒▓█▓▒░░▒▓████████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░           ░▒▓████████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓████████▓▒░   ░▒▓█▓▒░       ░▒▓██▓▒░   ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ Tis' but raven
      --   \        :,---__.
      --   \__,,, \\      0_-\:
      --       ---__\   /,
      --         // /___---\
      --         /_/
      --     ~~~/      ]]
      -- local logo = [[
      --     ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
      --     ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
      --     ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
      --     ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
      --     ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
      --     ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝ gaahhhh
      -- ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      -- stylua: ignore
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file",       LazyVim.pick()),
        dashboard.button("n", " " .. " New file",        [[<cmd> ene <BAR> startinsert <cr>]]),
        dashboard.button("r", " " .. " Recent files",    LazyVim.pick("oldfiles")),
        dashboard.button("g", " " .. " Find text",       LazyVim.pick("live_grep")),
        dashboard.button("c", " " .. " Config",          LazyVim.pick.config_files()),
        dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
        dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
    config = function(_, dashboard)
      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          once = true,
          pattern = "AlphaReady",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      require("alpha").setup(dashboard.opts)

      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "LazyVimStarted",
        callback = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          dashboard.section.footer.val = "⚡ Neovim loaded "
            .. stats.loaded
            .. "/"
            .. stats.count
            .. " plugins in "
            .. ms
            .. "ms"
          pcall(vim.cmd.AlphaRedraw)
        end,
      })
    end,
  },
}
-- opts = function(_, opts)
-- opts.lualine_bold = true
-- if vim.g.neovide and vim.g.neovide_transparency_enable then
-- opts.transparent = true
-- opts.styles = opts.styles or {}
-- opts.styles.sidebars = "transparent"
-- opts.styles.floats = "transparent"
-- end
-- opts.on_colors = function(colors)
-- colors.border = colors.comment
-- end
-- return opts
-- end,
-- },
-- }
