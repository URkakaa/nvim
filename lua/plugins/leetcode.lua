return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- 基础配置
    lang = "cpp", -- 默认语言设为C++
    image_support = true,

    -- 中文站配置（已开启，无需修改）
    cn = {
      enabled = true,
      translator = true,
      translate_problems = true,
    },

    -- 核心：添加Cookie配置（替换成你的值）
    cookies = {
      leetcode_session = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZXh0X2FmdGVyX29hdXRoIjoiLyIsIl9hdXRoX3VzZXJfaWQiOiI4ODQ2MDYxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZWU5Y2U4ODFjNDczZjk5MjNjOTU4MGFlODEwZDQ1NWVhZmMzMDE0MDAxZmI1NDIxYWM2NTJiODk3NmQ1NzZlIiwiaWQiOjg4NDYwNjEsImVtYWlsIjoiIiwidXNlcm5hbWUiOiJmZXN0aXZlLWVsYmFreWFub2cyIiwidXNlcl9zbHVnIjoiZmVzdGl2ZS1lbGJha3lhbm9nMiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNuL2FsaXl1bi1sYy11cGxvYWQvZGVmYXVsdF9hdmF0YXIucG5nIiwicGhvbmVfdmVyaWZpZWQiOnRydWUsImRldmljZV9pZCI6IjhiM2EzOTRlNzQyOTQwMWE0YTFkMGJiMmJmMWY4YmYzIiwiaXAiOiIxMDMuMTUxLjE3Mi44NiIsIl90aW1lc3RhbXAiOjE3NzMyMzgzNzUuODYyODg3MSwiZXhwaXJlZF90aW1lXyI6MTc3NTc2MTIwMCwidmVyc2lvbl9rZXlfIjowLCJsYXRlc3RfdGltZXN0YW1wXyI6MTc3MzI0MDA4M30.y4scB2jDvk_8M8l27fM6DxvIz54bcPxRRGlOk8oycwo",
      csrftoken = "axHvFpkrQ6cgqsoZUaFH2QH7X1KaAnfp",
    },
  },
}
