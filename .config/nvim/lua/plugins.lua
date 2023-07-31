lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

---===/// Plugins List \\\===---

  'nyoom-engineering/oxocarbon.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-treesitter/nvim-treesitter',
  'm4xshen/autoclose.nvim',
  'goolord/alpha-nvim',
  'nvim-tree/nvim-web-devicons',
  'folke/trouble.nvim'

---==========================---

}

local opts = {}

require("lazy").setup(plugins, opts)

---===/// Plugin Configurations \\\===---

-- Teeesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "html", "css"},

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Autoclose
require("autoclose").setup({
	keys = {
		["<"] = { escape = true, close = true, pair = "<>", disabled_filetypes = {} },
	},

})

-- Startify home page
require'alpha'.setup(require'alpha.themes.startify'.config)

