return {
  -- 1. 禁用默认的 tokyonight 主题
  { "folke/tokyonight.nvim", enabled = false },

  -- 2. 安装并配置 Catppuccin
  {
    "catppuccin/nvim",
    lazy = true, -- 遵循 LazyVim 官方的 lazy 加载
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- 主题风格（latte/frappe/macchiato/mocha）
      transparent_background = true, -- 开启透明背景（核心需求）
      float = {
        transparent = true, -- 悬浮窗口透明（适配终端/弹窗）
      },
      lsp_styles = {
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      integrations = {
        -- 保留官方推荐的所有集成（确保插件样式适配）
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        mini = true,
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        snacks = true,
        telescope = true,
        treesitter_context = true,
        which_key = true,
        toggleterm = true, -- 关键：适配终端插件样式
      },
    },
    -- 可选：适配 bufferline 样式（官方推荐）
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.special.bufferline").get_theme()
          end
        end,
      },
    },
  },

  -- 3. 告诉 LazyVim 默认加载 Catppuccin 主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- 替换为 catppuccin
    },
  },
}
