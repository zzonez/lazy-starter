return {
  {
    "echasnovski/mini.surround",
    version = "*",
    opts = function(_, opts)
      -- Preserve existing options
      opts = opts or {}

      -- Ensure custom_textobjects exists
      opts.custom_textobjects = opts.custom_textobjects or {}

      -- Add the new custom textobject
      local ts_input = require("mini.surround").gen_spec.input.treesitter
      opts.custom_textobjects.f = ts_input({ outer = "@call.outer", inner = "@call.inner" })

      return opts
    end,
  },
}
