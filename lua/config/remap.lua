vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>y", "\"+y");

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

function MyVimgrep(input)
  local search_pattern = vim.fn.input('Enter search pattern: ', input)
  vim.cmd('vimgrep /' .. search_pattern .. '/j **/*')
  vim.cmd('copen')
end

vim.api.nvim_set_keymap('n', '<leader>gr', [[:lua MyVimgrep('')<CR>]], { noremap = true, silent = true })
