local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) >  0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Intalling packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim' -- required by telescope.nvim
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-fugitive'
  use 'preservim/nerdtree'
  use 'windwp/nvim-autopairs'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-surround'
  use 'romgrk/barbar.nvim'
  use 'slim-template/vim-slim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
    'folke/which-key.nvim',
    config = function()
      require('which-key').setup {}
    end
  }

  -- colorschemes
	use 'Mofiqul/dracula.nvim'

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
