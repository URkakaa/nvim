-- ~/.config/nvim/lua/plugins/colorizer.lua
return {
  "NvChad/nvim-colorizer.lua",
  event = "BufReadPost", -- 打开文件后加载，提升启动速度
  config = function()
    require("colorizer").setup({
      -- 要启用颜色预览的文件类型（* 表示所有文件）
      filetypes = { "*" },
      -- 配置颜色预览的样式
      user_default_options = {
        RGB = true, -- 显示 RGB 颜色 (#RGB 格式)
        RRGGBB = true, -- 显示 6 位十六进制颜色 (#RRGGBB 如 #0e1513)
        RRGGBBAA = true, -- 显示带透明度的颜色 (#RRGGBBAA)
        rgb_fn = true, -- 显示 rgb()/rgba() 函数
        hsl_fn = true, -- 显示 hsl()/hsla() 函数
        css = true, -- 启用 CSS 颜色语法
        css_fn = true, -- 启用 CSS 颜色函数
        -- 颜色预览的显示模式："background"（背景色）/ "foreground"（文字色）/ "virtualtext"（虚拟文本）
        mode = "background",
        -- 忽略的模式（比如注释中的颜色码可忽略，这里关闭忽略）
        tailwind = false,
        sass = { enable = false },
        virtualtext = "■", -- 如果用 virtualtext 模式，显示的字符
      },
    })
    -- 手动触发一次颜色高亮（确保打开文件后立即生效）
    vim.cmd("ColorizerAttachToBuffer")
  end,
}
