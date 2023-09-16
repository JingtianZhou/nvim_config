-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup{
  -- 关闭文件时自动关闭
  auto_close = true,
  -- 不显示 git 状态图标
  git = {
    enable = true
  },
  filters = {
    dotfiles = true
  }
}

