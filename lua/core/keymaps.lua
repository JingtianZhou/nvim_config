vim.g.mapleader = " "
local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
--keymap.set("i", "kk", "<ESC>")
keymap.set("n", "<leader>q", "<ESC>:q!<CR>")
keymap.set("n", "<leader>wq", "<ESC>:wq<CR>")
keymap.set("n", "<leader>w", "<ESC>:w!<CR>")

-- insert 模式下，跳到行首行尾
keymap.set("i", "<C-a>", "<ESC>I")
keymap.set("i", "<C-e>", "<ESC>A")
keymap.set("n", "<C-a>", "$")
keymap.set("n", "<C-e>", "^")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- visual模式下缩进代码
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sp", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sv", "<C-w>s") -- 垂直新增窗口

-- Mac 下option + hjkl  窗口之间跳转
keymap.set("n", "∑", "<C-w>w")
keymap.set("n", "˙", "<C-w>h")
keymap.set("n", "∆", "<C-w>j")
keymap.set("n", "˚", "<C-w>k")
keymap.set("n", "¬", "<C-w>l")
keymap.set("n", "<leader>]", ":bn<CR>")
keymap.set("n", "<leader>[", ":bp<CR>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- <leader>t 开启终端 create new Terminal
keymap.set('n', '<leader>t', ':sp | terminal<CR>')
keymap.set('n', '<leader>T', ':vsp | terminal<CR>')
-- <Esc> 退出终端 quit Terminal
keymap.set('t', '<Esc>', '<C-\\><C-N>')
-- 终端窗口中进行窗口切换 Window switching in terminal window
keymap.set('t', '<C-h>', [[ <C-\><C-N><C-w>h ]])
keymap.set('t', '<C-j>', [[ <C-\><C-N><C-w>j ]])
keymap.set('t', '<C-k>', [[ <C-\><C-N><C-w>k ]])
keymap.set('t', '<C-l>', [[ <C-\><C-N><C-w>l ]])

-- 修改 Ctrl-u 和 Ctrl-d 的移动幅度 从默认的移动半瓶改为移动 9 行
keymap.set('n', '<C-u>', '9k')
keymap.set('n', '<C-d>', '9j')

-- 左右比例控制
-- map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
-- map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
keymap.set("n", "s,", ":vertical resize -20<CR>")
keymap.set("n", "s.", ":vertical resize +20<CR>")
-- 上下比例
keymap.set("n", "sj", ":resize +10<CR>")
keymap.set("n", "sk", ":resize -10<CR>")
-- map("n", "<C-Down>", ":resize +2<CR>", opt)
-- map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
keymap.set("n", "s=", "<C-w>=")

-- Telescope
-- 查找文件
keymap.set("n", "<leader>p", ":Telescope find_files<CR>")
-- 全局搜索
keymap.set("n", "<leader>f", ":Telescope live_grep<CR>")

-- 全文格式化代码
keymap.set("n", "Ï", "gg=G<C-o>")

