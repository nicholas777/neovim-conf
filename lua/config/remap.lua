vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

function MyVimgrep(input)
  local search_pattern = vim.fn.input('Enter search pattern: ', input)
  vim.cmd('vimgrep /' .. search_pattern .. '/j **/*')
  vim.cmd('copen')
end

vim.api.nvim_set_keymap('n', '<leader>gr', [[:lua MyVimgrep('')<CR>]], { noremap = true, silent = true })
