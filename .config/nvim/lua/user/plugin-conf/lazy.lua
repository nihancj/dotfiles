local plugins = require "user.plugins"

-- Automatically install packer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

-- Install your plugins here
-- vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local opts = {
	defaults = {
		lazy = true,
	},
	dev = {
		path = "~/nvim-plugins",
	},
}

lazy.setup(plugins, opts)