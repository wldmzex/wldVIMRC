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
require("config.utilconf")
require("config.keymap")
require("lazy").setup(plugins, opts)
--require("config.plugins")
--require'lspconfig'.clangd.setup{}
--require("plugins.pluginconfig")
