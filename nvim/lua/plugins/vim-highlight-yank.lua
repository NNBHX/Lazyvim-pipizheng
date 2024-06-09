-- 配置 nvim-yanky 插件
return {
  "gbprod/yanky.nvim",
  config = function()
    require("yanky").setup({
      ring = {
        history_length = 100,
        storage = "shada",
        sync_with_numbered_registers = true,
      },
      system_clipboard = {
        sync_with_ring = true,
      },
      highlight = {
        on_put = true,
        on_yank = true,
        timer = 500,
      },
    })

    -- 映射快捷键
    vim.api.nvim_set_keymap("n", "p", "<Plug>(yanky-put-after)", {})
    vim.api.nvim_set_keymap("n", "P", "<Plug>(yanky-put-before)", {})
    vim.api.nvim_set_keymap("n", "gp", "<Plug>(yanky-put-after)", {})
    vim.api.nvim_set_keymap("n", "gP", "<Plug>(yanky-put-before)", {})
    vim.api.nvim_set_keymap("n", "<c-n>", "<Plug>(yanky-cycle-forward)", {})
    vim.api.nvim_set_keymap("n", "<c-p>", "<Plug>(yanky-cycle-backward)", {})
    vim.api.nvim_set_keymap("n", "]p", "<Plug>(yanky-put-after)", {})
    vim.api.nvim_set_keymap("n", "[p", "<Plug>(yanky-put-before)", {})
  end,
}
