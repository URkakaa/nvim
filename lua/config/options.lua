-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 拼写检查
vim.opt.spelllang = { "en", "cjk" }

-- 设置Neovim默认shell为fish
vim.opt.shell = "fish"
-- 可选：关闭shell参数（避免fish解析错误）
vim.opt.shellcmdflag = "-c"
