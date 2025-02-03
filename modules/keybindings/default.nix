{ ... }:

{
  vim.nnoremap =
    {
      "<leader>qo" = ":lua vim.diagnostic.setqflist()<CR>";
      "<leader>qc" = ":cclose<CR>";
      "<leader>qe" = ":lua vim.diagnostic.setqflist({severity = 'E'})<CR>";
      "<leader>qw" = ":lua vim.diagnostic.setqflist({severity = 'W'})<CR>";
      "<leader>vt" = ":vsplit term://%:p:h//zsh<CR>";
      "]o" = ":copen<CR>";
      "]q" = ":cnext<CR>";
      "[q" = ":cprev<CR>";
      ",d" = "\"_d";
      ",c" = "\"_c";
      "H" = ":tabprev<CR>";
      "L" = ":tabnext<CR>";
    };

  vim.tnoremap =
    {
      "<Esc>" = "<C-\\><C-n>";
    };

  vim.startLuaConfigRC = ''
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "*",
      command = "startinsert"
    })
  '';
}
