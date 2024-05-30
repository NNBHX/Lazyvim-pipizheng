-- init.lua 或 plugins.lua

-- 使用 lazy.nvim 作为插件管理器
require("lazy").setup({
  -- 添加 mini.nvim 插件
  {
    "echasnovski/mini.nvim",
    version = false, -- 使用最新版本
    config = function()
      -- 配置 mini.animate 插件
      require("mini.animate").setup({
        scroll = {
          enable = true,
          timing = require("mini.animate").gen_timing.linear({ duration = 300 }),
        },
        resize = {
          enable = true,
          timing = require("mini.animate").gen_timing.linear({ duration = 200 }),
        },
        open = {
          enable = true,
          timing = require("mini.animate").gen_timing.linear({ duration = 250 }),
        },
        close = {
          enable = true,
          timing = require("mini.animate").gen_timing.linear({ duration = 250 }),
        },
      })
    end,
  },
})
