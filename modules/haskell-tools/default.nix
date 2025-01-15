{ pkgs, ... }:

{
  vim.startPlugins = [ pkgs.vimPlugins.haskell-tools-nvim ];

  vim.luaConfigRC = ''
  '';

  vim.nnoremap =
    {
      "<leader>ea" = "<cmd>lua require('haskell-tools').lsp.buf_eval_all()<CR>";
    };
}
