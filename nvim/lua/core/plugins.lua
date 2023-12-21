-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File Explorer
  use 'nvim-tree/nvim-tree.lua'

  -- Devicons for File Explorer
  use 'nvim-tree/nvim-web-devicons'

  -- Lualine(useful for displaying file path and additional info)
  use 'nvim-lualine/lualine.nvim'

  -- auto syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- package manager for LSPs
  use{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Custom themes
  use 'rebelot/kanagawa.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'kepano/flexoki-neovim'
  use 'nyoom-engineering/nyoom.nvim'
  use 'jacoborus/tender.vim'
  use 'bluz71/vim-moonfly-colors'
  use 'nyoom-engineering/oxocarbon.nvim'
  use 'savq/melange-nvim'
  use {"mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim"}
  use 'marko-cerovac/material.nvim'
  use 'ribru17/bamboo.nvim'
  use 'ramojus/mellifluous.nvim'
  use 'DanielEliasib/sweet-fusion'
  use 'zootedb0t/citruszest.nvim'
  use {'rockyzhang24/arctic.nvim', requires = "rktjmp/lush.nvim"}
  use 'dylanaraps/wal.vim'
  -- navigator
  use({
    'ray-x/navigator.lua',
    requires = {
        { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
        { 'neovim/nvim-lspconfig' },
    },
})

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  -- Pretty fold
  use{ 'anuvyklack/pretty-fold.nvim',
  config = function()
    require('pretty-fold').setup()
  end
}

-- Preview fold
use { 'anuvyklack/fold-preview.nvim',
requires = 'anuvyklack/keymap-amend.nvim',
config = function()
  require('fold-preview').setup({
    -- Your configuration goes here.
  })
end
}

-- Use dependency and run lua function after load
use {
  'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  config = function() require('gitsigns').setup() end
}
end)
