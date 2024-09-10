{ ... }:

{
  vim.nnoremap =
    {
      "<leader>qo" = ":lua vim.diagnostic.setqflist()<CR>";
      "<leader>qc" = ":cclose<CR>";
      "<leader>qe" = ":lua vim.diagnostic.setqflist({severity = 'E'})<CR>";
      "<leader>qw" = ":lua vim.diagnostic.setqflist({severity = 'W'})<CR>";
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
      "<leader><Esc>" = "<C-\\><C-n>";
    };
}
