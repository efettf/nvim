

-- Bootstrap lazy.nvim.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)

local o = vim.o
local g = vim.g
local a = vim.api
local k = vim.keymap

g.mapleader = " "

require("lazy").setup({
  spec = { import = "plugins" }
})

k.set("n", "<leader>r", "<cmd>Lazy<cr>")

a.nvim_set_keymap("n", "<c-=>", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<cr>", { silent = true })
a.nvim_set_keymap("n", "<c-->", "<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<cr>", { silent = true })

o.autoread = true
o.backup = false
o.clipboard = "unnamedplus"
o.expandtab = true
o.foldlevel = 6
o.formatoptions = "cr"
o.guicursor = "a:hor20"
o.ignorecase = true
o.incsearch = true
o.linespace = 2
o.magic = true
o.laststatus = 0
o.number = true
o.scrolloff = 8
o.shiftwidth = 2
o.smartcase = true
o.smarttab = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.termguicolors = true
o.writebackup = false


