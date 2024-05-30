require("config.lazy")
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.guifont = "AnonymicePro Nerd Font:h14"
require("lazy").setup("plugins")
require("plugins.ui.mini-animate")
