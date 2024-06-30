{ pkgs, ... }:

{
  vim.startPlugins = [ pkgs.vimPlugins.indent-blankline-nvim ];

  vim.luaConfigRC = ''
    require("ibl").setup {
        indent = { highlight = "IblIndent" },
        scope = { enabled = true },
    }
  '';
}
