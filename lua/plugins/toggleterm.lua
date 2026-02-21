return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    config = function()
      local toggleterm = require("toggleterm")
      local Terminal = require("toggleterm.terminal").Terminal

      -- 基础配置（无需修改）
      toggleterm.setup({
        close_on_exit = true,
        on_open = function(term)
          -- 终端内按 ESC 回到普通模式
          vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<ESC>", "<C-\\><C-n>", { noremap = true })
        end,
      })

      -- 定义不同类型的终端实例
      local terminals = {
        horizontal = Terminal:new({ direction = "horizontal", size = 15 }),
        vertical = Terminal:new({ direction = "vertical", size = vim.o.columns * 0.4 }),
        float = Terminal:new({
          direction = "float",
          float_opts = { border = "single", width = 120, height = 30 },
        }),
      }

      -- 核心：弹出选择菜单并打开对应终端
      local select_terminal = function()
        -- 选项列表（显示给你的文字 → 对应终端类型）
        local options = {
          { name = "悬浮终端 (float)", type = "float" },
          { name = "右侧终端 (vertical)", type = "vertical" },
          { name = "底部终端 (horizontal)", type = "horizontal" },
        }

        -- 弹出原生选择菜单
        vim.ui.select(options, {
          prompt = "选择终端类型：", -- 菜单标题
          format_item = function(item)
            return item.name -- 菜单里显示的选项文字
          end,
        }, function(choice)
          -- 选择后执行：打开对应终端
          if choice then
            terminals[choice.type]:toggle()
          end
        end)
      end

      -- 绑定快捷键：<leader>t 触发选择菜单
      vim.keymap.set("n", "<leader>t", select_terminal, {
        desc = "Open terminal (select type)",
        noremap = true,
        silent = true,
      })

      -- 可选：快速关闭所有终端（<leader>T）
      vim.keymap.set("n", "<leader>T", function()
        for _, term in pairs(terminals) do
          term:close()
        end
      end, { desc = "Close all terminals" })
    end,
  },
}
