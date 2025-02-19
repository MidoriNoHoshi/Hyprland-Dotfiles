return {
  "Mofiqul/trld.nvim",
  opts = {
    position = "top",
    auto_cmds = true,
    highlights = {
      error = "DiagnosticFloatingError",
      warn = "DiagnosticFloatingWarn",
      info = "DiagnosticFloatingInfo",
      hint = "DiagnosticFloatingHint",
    },
    -- diagnostics formatter. must return?
    -- {
    -- {{ "String", "Highlight Group Name" }},
    -- {{ "String", "Highlight Group Name" }},
    -- {{ "String", "Highlight Group Name" }},
    -- ...
    -- }
    formatter = function(diag)
      local u = require("trld.utils")
      local diag_lines = {}

      for line in diag.message:gmatch("[^\n]+") do
        line = line:gsub("[\t]+%f[\r\n%z]", "")
        table.insert(diag_lines, line)
      end

      local lines = {}
      for _, diag_line in ipairs(diag_lines) do
        table.insert(lines, { { diag_line .. " ", u.get_hl_by_serverity(diag.severity) } })
      end
      return lines
    end,
    -- remember to disable default diagnostics virtual text in the neovim configs.
  },
}
