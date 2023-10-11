vim.cmd[[autocmd FileType javascript,json,html,css,scss,jsonc,typescript,typescriptreact,markdown,yaml setlocal formatprg=prettier\ --stdin\ --stdin-filepath\=%\ --single-quote\ --tab-width\=4]]

vim.g['prettier#autoformat'] = 1
vim.g['prettier#autoformat_require_pragma'] = 0
vim.g['prettier#exec_cmd_async'] = 0
