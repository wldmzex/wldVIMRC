-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.cmd [[colorscheme tokyonight-night]]
require("plugins.pluginconfig")
return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'neovim/nvim-lspconfig'
  	use 'wbthomason/packer.nvim'
	use 'rbgrouleff/bclose.vim'
	use 'folke/tokyonight.nvim'
	use 'francoiscabrol/ranger.vim'
	use 'vim-airline/vim-airline'
	use 'nvim-tree/nvim-tree.lua'
end)

