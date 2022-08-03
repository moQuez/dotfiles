require'nvim-treesitter.configs'.setup {
  ensure_installed = {"typescript","tsx","html","css","javascript","lua"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  indent = {
    enable = true
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"}
  }
}
