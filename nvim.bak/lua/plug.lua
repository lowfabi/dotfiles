	
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 
  -- Colorscheme
  use 'ellisonleao/gruvbox.nvim'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- color highlighter
  use 'NvChad/nvim-colorizer.lua'

  -- Visual indicator of indents
  use 'Yggdroot/indentLine'

  -- Tool for configuring LSP
  use 'neovim/nvim-lspconfig'

  -- Writing files as sudo
  use 'lambdalisue/suda.vim'

  -- Autoinstalls LSP servers
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'

  -- Rust tools
  use 'simrat39/rust-tools.nvim'

  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'   

  -- Advanced syntax highliting
  use 'nvim-treesitter/nvim-treesitter'

  -- Floating Terminal
  use 'voldikss/vim-floaterm'

  -- Tool for hopping through vim
  use {'phaazon/hop.nvim', branch = 'v2'}

  -- Copilot
  use 'github/copilot.vim'
 
  -- Autopairs 
  use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

  -- Comment
  use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end }


  -- Format current line immediately in INSERT mode as soon as you press ENTER:
  use 'skywind3000/vim-rt-format'

  -- Faster boot
  use 'lewis6991/impatient.nvim'

  -- Noice 
  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })

  -- Shortcut guide
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup { }
    end
  }

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'sharkdp/fd'
  }
}

  if install_plugins then
    require('packer').sync()
  end
  end)
