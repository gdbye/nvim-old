vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require('plugins')
require('telescope')
require('lsp')
require('ts')
require('snipets')
require('bar')
require('buffer')
require('tree')
require('mini')

vim.cmd "set number"
vim.cmd.colorscheme "catppuccin-mocha"
