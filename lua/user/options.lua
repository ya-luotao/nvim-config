local options = {
  backup = false,
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  fileencoding = "utf-8",
  hlsearch = true,
  incsearch = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  undofile = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  background = "dark",

}

for k, v in pairs(options) do
  vim.opt[k] = v
end
