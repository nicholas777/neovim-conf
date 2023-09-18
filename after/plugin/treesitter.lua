require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "cpp", "c_sharp", "css", "vim", "vimdoc", "javascript", "typescript", "html", "json", "make", "python", "sql" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  }
}
