-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>")

-- 取消默认的 ctrl+/ 底部终端映射
vim.keymap.del("n", "<C-/>")
vim.keymap.del("t", "<C-/>")

-- 重新绑定 ctrl+/ 到悬浮终端 lazyterm
vim.keymap.set("n", "<C-/>", function()
  -- 调用 LazyVim 内置的悬浮终端
  require("lazy.util").float_term(nil, {
    border = "rounded", -- 圆角边框（可选）
    width = 0.8, -- 宽度占屏幕 80%
    height = 0.8, -- 高度占屏幕 80%
    title = "LazyTerm", -- 终端标题
    title_pos = "center", -- 标题居中
  })
end, { desc = "Toggle floating terminal" })

-- 补充：悬浮终端内按 ctrl+/ 也能关闭（可选）
vim.keymap.set("t", "<C-/>", "<C-\\><C-n>:q<CR>", { desc = "Close floating terminal" })
