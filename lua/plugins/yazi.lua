---@type LazySpec
local M = {
  "mikavilpas/yazi.nvim",
  version = "*", -- 使用最新稳定版本
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    -- 普通/可视化模式，空格+- 打开Yazi并定位到当前文件目录
    {
      "<leader>-",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    -- 空格+cw 打开Yazi并定位到Neovim工作目录
    {
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
    -- Ctrl+↑ 恢复上一次的Yazi会话
    {
      "<c-up>",
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  ---@type table  -- 替换未定义的YaziConfig为通用table，消除类型告警
  opts = {
    open_for_directories = false, -- 不替换netrw，新手推荐
    keymaps = {
      show_help = "<f1>", -- F1显示插件帮助
    },
  },
  init = function()
    -- 标记netrw为已加载，避免和Yazi冲突（open_for_directories=true时必备）
    vim.g.loaded_netrwPlugin = 1
  end,
}

return M

